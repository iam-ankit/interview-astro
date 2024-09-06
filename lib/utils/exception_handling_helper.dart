class ExceptionHandlingHelper {
  static String handleException(String error) {
    String message = error;
    switch (error) {
      case 'user-not-found':
        message = 'No user found for that email.';

        return message;
      case 'email-already-in-use':
        message = 'Email already exsits';

        return 'Email already exsits';
      case 'weak-password':
        message = 'Password is very weak';

        return message;
      case 'wrong-password':
        message = 'Wrong password provided for that user.';

        return message;
      case 'user-disabled':
        message =
            'Account has been disabled please contact your network Administrator';

        return message;
      case 'invalid-email':
        message = 'Email address entered is invalid';

        return message;
      case 'invalid-verification-code':
        message = 'The verification code of the credential is not valid.';

        return message;
      case 'invalid-verification-id':
        message = 'The verification ID of the credential is not valid.';

        return message;
      case 'operation-not-allowed':
        message =
            'Enable the account type in the Firebase Console, under the Auth tab.';

        return message;
      case 'invalid-credential':
        message = 'the credential is malformed or has expired.';

        return message;
      case 'account-exists-with-different-credential':
        message =
            'There already exists an account with the email address asserted by the credential';

        return message;
      case 'claims-too-large':
        message =
            'The claims payload provided to setCustomUserClaims() exceeds the maximum allowed size of 1000 bytes.';

        return message;
      case 'email-already-exists':
        message =
            'The provided email is already in use by an existing user. Each user must have a unique email.';

        return message;
      case 'id-token-expired':
        message = 'The provided Firebase ID token is expired.';

        return message;
      case 'id-token-revoked':
        message = 'The Firebase ID token has been revoked.';

        return message;
      case 'insufficient-permission':
        message =
            'The credential used to initialize the Admin SDK has insufficient permission to access the requested Authentication resource.';

        return message;
      case 'internal-error':
        message =
            'The Authentication server encountered an unexpected error while trying to process the request. The error message should contain the response from the Authentication server containing additional information.';

        return message;
      case 'invalid-argument':
        message =
            'An invalid argument was provided to an Authentication method. The error message should contain additional information.';

        return message;
      case 'invalid-claims':
        message =
            'The custom claim attributes provided to setCustomUserClaims() are invalid.';

        return message;
      case 'invalid-continue-uri':
        message = 'The continue URL must be a valid URL string.';

        return message;
      case 'invalid-creation-time':
        message = 'The creation time must be a valid UTC date string.';

        return message;
      case 'invalid-disabled-field':
        message =
            'The provided value for the disabled user property is invalid. It must be a boolean.';

        return message;
      case 'invalid-display-name':
        message =
            'The provided value for the displayName user property is invalid. It must be a non-empty string.';

        return message;
      case 'invalid-dynamic-link-domain':
        message =
            'The provided dynamic link domain is not configured or authorized for the current project.';

        return message;
      case 'invalid-email-verified':
        message =
            'The provided value for the emailVerified user property is invalid. It must be a boolean.';

        return message;
      case 'invalid-hash-algorithm':
        message =
            'The hash algorithm must match one of the strings in the list of supported algorithms.';

        return message;
      case 'invalid-hash-block-size':
        message = 'The hash block size must be a valid number.';

        return message;
      case 'invalid-hash-derived-key-length':
        message = 'The hash derived key length must be a valid number.';

        return message;
      case 'invalid-hash-key':
        message = 'The hash key must a valid byte buffer.';

        return message;
      case 'invalid-hash-memory-cost':
        message = 'The hash memory cost must be a valid number.';

        return message;
      case 'invalid-hash-parallelization':
        message = 'The hash parallelization must be a valid number.';

        return message;
      case 'invalid-hash-rounds':
        message = 'The hash rounds must be a valid number.';

        return message;
      case 'invalid-hash-salt-separator':
        message =
            'The hashing algorithm salt separator field must be a valid byte buffer.';

        return message;
      case 'invalid-id-token':
        message = 'The provided ID token is not a valid Firebase ID token.';

        return message;
      case 'invalid-last-sign-in-time':
        message = 'The last sign-in time must be a valid UTC date string.';

        return message;
      case 'invalid-page-token':
        message =
            'The provided next page token in listUsers() is invalid. It must be a valid non-empty string.';

        return message;
      case 'invalid-password':
        message =
            'The provided value for the password user property is invalid. It must be a string with at least six characters.';

        return message;
      case 'invalid-password-hash':
        message = 'The password hash must be a valid byte buffer.';

        return message;
      case 'invalid-password-salt':
        message = 'The password salt must be a valid byte buffer';

        return message;
      case 'invalid-phone-number':
        message =
            'The provided value for the phoneNumber is invalid. It must be a non-empty E.164 standard compliant identifier string.';

        return message;
      case 'invalid-photo-url':
        message =
            'The provided value for the photoURL user property is invalid. It must be a string URL.';

        return message;
      case 'invalid-provider-data':
        message = 'The providerData must be a valid array of UserInfo objects.';

        return message;
      case 'invalid-provider-id':
        message =
            'The providerId must be a valid supported provider identifier string.';

        return message;
      case 'invalid-oauth-responsetype':
        message = 'Only exactly one OAuth responseType should be set to true.';

        return message;
      case 'invalid-session-cookie-duration':
        message =
            'The session cookie duration must be a valid number in milliseconds between 5 minutes and 2 weeks.';

        return message;
      case 'invalid-uid':
        message =
            'The provided uid must be a non-empty string with at most 128 characters.';

        return message;
      case 'invalid-user-import':
        message = 'The user record to import is invalid.';

        return message;
      case 'maximum-user-count-exceeded':
        message =
            'The maximum allowed number of users to import has been exceeded.';

        return message;
      case 'missing-android-pkg-name':
        message =
            'An Android Package Name must be provided if the Android App is required to be installed.';

        return message;
      case 'missing-continue-uri':
        message = 'A valid continue URL must be provided in the request.';

        return message;
      case 'missing-hash-algorithm':
        message =
            'Importing users with password hashes requires that the hashing algorithm and its parameters be provided.';

        return message;
      case 'missing-uid':
        message = 'The request is missing a Bundle ID.';

        return message;
      case 'missing-oauth-client-secret':
        message =
            'The OAuth configuration client secret is required to enable OIDC code flow.';

        return message;
      case 'phone-number-already-exists':
        message =
            'The provided phoneNumber is already in use by an existing user. Each user must have a unique phoneNumber.';

        return message;
      case 'project-not-found':
        message =
            'No Firebase project was found for the credential used to initialize the Admin SDKs';

        return message;
      case 'reserved-claims':
        message =
            'One or more custom user claims provided to setCustomUserClaims() are reserved.';

        return message;
      case 'session-cookie-expired':
        message = 'The provided Firebase session cookie is expired.';

        return message;
      case 'session-cookie-revoked':
        message = 'The Firebase session cookie has been revoked.';

        return message;
      case 'uid-already-exists':
        message =
            'The provided uid is already in use by an existing user. Each user must have a unique uid.';

        return message;
      case 'unauthorized-continue-uri':
        message =
            'The domain of the continue URL is not whitelisted. Whitelist the domain in the Firebase Console.';

        return message;
      default:
        return error;
    }
  }
}
