# accesskit

[Design](https://www.figma.com/file/mynOdhz671wT4mpxCSEOSA/Accesskit?node-id=0%3A1&t=5AOx4UD4Qa6Q7YKC-1) Figma file.

## Objectives

Create a UIKit navigation POC that will allow the app to deep link to certain screens within the app. 

The deeplinking can be done either via a Push notification or by handling urls and their payload.

## Deeplinking examples

### Login OTP (One time password)
<details><summary>Details</summary>
<p>Our app will not us any sort of password to gain access, to gain access and obtain an access token, the user would provide their email, and then a One time password would be sent</p>
<img width="200" alt="image" src="https://user-images.githubusercontent.com/228899/231632572-0d17aab5-a96c-4308-812b-3f7b90265139.png">
<p>The email would have the code the user can enter manually,or they can click the link and the app should handle the link and autofill the 6 digiat code.</p>
<img width="200" alt="image" src="https://user-images.githubusercontent.com/228899/231632651-003dccb9-ef68-4f5e-8f92-583c1fb70bd3.png">
</details>
