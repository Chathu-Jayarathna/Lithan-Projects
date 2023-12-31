package xyz.cars.restapi.oauth2.user;

import java.util.Map;

import xyz.cars.restapi.entity.AuthProvider;
import xyz.cars.restapi.exception.OAuth2AuthenticationProcessingException;

public class OAuth2UserInfoFactory {

  public static OAuth2UserInfo getOAuth2UserInfo(String registrationId, Map<String, Object> attributes) {
    if (registrationId.equalsIgnoreCase(AuthProvider.facebook.toString())) {
      return new FacebookOAuth2UserInfo(attributes);

    } else {
      throw new OAuth2AuthenticationProcessingException(
          "Sorry! Login with " + registrationId + " is not supported yet.");
    }
  }
}
