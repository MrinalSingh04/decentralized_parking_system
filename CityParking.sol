// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract CityParking {
    struct ParkingSlot {
        uint id;
        address owner;
        uint pricePerHour;
        bool isAvailable;
        address bookedBy;
        uint bookingTime;
        uint amountPaid;
    }

    uint public totalSlots;
    mapping(uint => ParkingSlot) public slots;
    event SlotRegistered(uint slotId, address owner, uint price);
    event SlotBooked(uint slotId, address user, uint bookingHours, uint amount);
    event SlotReleased(uint slotId, address user, uint refund);

    function registerSlot(uint _pricePerHour) external {
        totalSlots++;
        slots[totalSlots] = ParkingSlot(
            totalSlots,
            msg.sender,
            _pricePerHour,
            true,
            address(0),
            0,
            0
        );
        emit SlotRegistered(totalSlots, msg.sender, _pricePerHour);
    }
    function bookSlot(uint _slotId, uint bookingHours) external payable {
        ParkingSlot storage slot = slots[_slotId];
        require(slot.isAvailable, "Slot not available");
        uint totalCost = slot.pricePerHour * bookingHours;
        require(msg.value >= totalCost, "Insufficient ETH");

        slot.isAvailable = false;
        slot.bookedBy = msg.sender;
        slot.bookingTime = block.timestamp;
        slot.amountPaid = msg.value; // Store the amount paid by the user

        emit SlotBooked(_slotId, msg.sender, bookingHours, msg.value);
    }

    function releaseSlot(uint _slotId) external {
        ParkingSlot storage slot = slots[_slotId];
        require(msg.sender == slot.bookedBy, "Not booked by you");

        uint timeUsed = (block.timestamp - slot.bookingTime) / 3600;
        uint totalCost = slot.pricePerHour * timeUsed;
        uint refund = slot.amountPaid > totalCost
            ? slot.amountPaid - totalCost
            : 0;

        slot.isAvailable = true;
        slot.bookedBy = address(0);
        slot.bookingTime = 0;
        slot.amountPaid = 0; // Reset stored payment

        if (refund > 0) {
            payable(msg.sender).transfer(refund);
        }

        emit SlotReleased(_slotId, msg.sender, refund);
    }
}
