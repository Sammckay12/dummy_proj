# MakersBnB specification

We would like a web application that allows users to list spaces they have available, and to hire spaces for the night.

## Headline specifications

- Any signed-up user can list a new space.
- Users can list multiple spaces.
- Users should be able to name their space, provide a short description of the space, and a price per night.
- Users should be able to offer a range of dates where their space is available.
- Any signed-up user can request to hire any space for one night, and this should be approved by the user that owns that space.
- Nights for which a space has already been booked should not be available for users to book that space.
- Until a user has confirmed a booking request, that space can still be booked for that night.

## User Stories
```
As a user
In order to use the service
I want to be able to sign up

As a user
When I have a vacant space
I want to advertise it

As a user
When I have vacant spaces
I want to be able to advertise them

As a user
When advertising a space
I want to be able to include description, price and name

As a user
When advertising a space
I want to be able to display the dates available

As a user
When looking for vacant spaces
I want to be able to hire for one night

As a user
When hiring out a space
I want to be able to approve an offer

As a user
When a space is booked
I want to show it unavailable for those dates

As a user
until a booking has been confirmed
I want to be able to still request it
```

## Summary

- owner/customer sign up
- owner post
- owner add name, description, price
- owner add dates available
- renter request
- owner confirm

## Nice-to-haves

 Users should receive an email whenever one of the following happens:
- They sign up
- They create a space
- They update a space
- A user requests to book their space
- They confirm a request
- They request to book a space
- Their request to book a space is confirmed
- Their request to book a space is denied

Users should receive a text message to a provided number whenever one of the following happens:
- A user requests to book their space
- Their request to book a space is confirmed
- Their request to book a space is denied

A ‘chat’ functionality once a space has been booked, allowing users whose space-booking request has been confirmed to chat with the user that owns that space

Basic payment implementation though Stripe.

## MVP

### 1st iteration

Can login to post an advertisement
Can view without logging in
Can post property ID and dates

- can view as homepage

- sign up/login
 - sign up
 - login
 - logout
 - inc db

- owner advertise
 - property ID
 - dates
 - inc db

### 2nd iteration

TBC


## Mockups

Mockups are [here](images/mockups.png)

## Notes

Break down as granular as possible. Estimate times. Mostly we work full stack.
