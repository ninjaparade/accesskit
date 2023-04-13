# accesskit

[Design](https://www.figma.com/file/mynOdhz671wT4mpxCSEOSA/Accesskit?node-id=0%3A1&t=5AOx4UD4Qa6Q7YKC-1) Figma file.

## Objectives

Create a UIKit navigation POC that will allow the app to deep link to certain screens within the app. 

The deeplinking can be done either via a Push notification or by handling urls and their payload.

## Deeplinking examples

### Login OTP (One time password)
<p>Our app will not us any sort of password to gain access, to gain access and obtain an access token, the user would provide their email, and then a One time password would be sent</p>
<details><summary>Details</summary>
<img width="200" alt="image" src="https://user-images.githubusercontent.com/228899/231632572-0d17aab5-a96c-4308-812b-3f7b90265139.png">
<p>The email would have the code the user can enter manually,or they can click the link and the app should handle the link and autofill the 6 digiat code.</p>
<img width="200" alt="image" src="https://user-images.githubusercontent.com/228899/231632651-003dccb9-ef68-4f5e-8f92-583c1fb70bd3.png">
</details>

### Getting to an active repair
<p>The use of this app is to allow customers to be able to check in their vheicle for service and monitor the status of their repair. Once a repair has been started we will be sending push notifications during status changes</p>
<details><summary>Details</summary>
<p> The repair details screen shown below, will be where we want to be able to push customers to see their repair status.</p>
<img width="200" alt="image" src="https://user-images.githubusercontent.com/228899/231633991-93d430f2-ecf1-4b16-b139-64dd32a740a7.png">
<p>This detials view is where most of the action will be during an interaction at the repair bay. Being able to get here from the root of the application will be vital.</p>
</details>

### Navigation
<p>As discussed, I am still uncler how UKit navigation can work with SwiftUI and support enviorment objects and DI injection for app state and an option that has reference to the API service, logging etc. </p>

<p> Creating a base app that is able to dispaly and navigate each screen in the figma flow linked at the start of the readme would be amazing</p>


## Global Combine publishers.

### Global Alerts
During interactions in the app, I want to be able to have a global publisher that can dispatch events to show a toast/notificaiton. this can be for showing an error messtion, an API validation error etc. 

### Validation Errors.
During form inputs and submission some sort of global combine publisher that can send validation errors captured from 422 status code responses from the API, I will provide the struct of what these look loike but pretty much as follows

```json
{
    "message": "Error message. (and 1 more error)",
    "errors": {
        "email": [
            "The email field is invald."
        ],
        "passcode": [
            "The passcode is invalid."
        ]
    }
}

```
