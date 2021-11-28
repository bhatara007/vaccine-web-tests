# vaccine-web-tests

## Test Cases
| Files                        | Desciprtion                                                                                                                                                                                                         |
|------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| reserve_and_cancel_test.robot               | Contains reserve and cancel the vaccine appointment on vaccince haven service taker website test |
| registeration_test.robot | Contains registeration on vaccince haven service taker website test and the citizen id can uses for once.                                                                                                                                                                        |

1. Open service taker URL: test open the vaccince haven homepage
3. Register on URL: test input the register information on register page
4. Open service taker URL: test open the vaccince haven homepage
5. Make Reservation: test input the reservation information and click reserve button
6. Verify user information: verify the user information
7. Make Cancelation & Verify: test cancel the appointment and verify and vaccince information has been clear

## How to run tests.

- Install dependencies

```
pip install -r requirements.txt
```

- Run tests

```
robot test_reservation.robot
```
