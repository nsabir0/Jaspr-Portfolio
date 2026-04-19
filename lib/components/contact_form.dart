import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Contact form with client-side validation.
/// Uses @client to enable interactivity on the browser.
@client
class ContactForm extends StatefulComponent {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => ContactFormState();
}

class ContactFormState extends State<ContactForm> {
  String name = '';
  String email = '';
  String message = '';

  String? nameError;
  String? emailError;
  String? messageError;

  bool submitted = false;

  /// Validates all form fields. Returns true if valid.
  bool _validate() {
    bool isValid = true;

    // Name validation
    if (name.trim().isEmpty) {
      nameError = 'Name is required.';
      isValid = false;
    } else if (name.trim().length < 2) {
      nameError = 'Name must be at least 2 characters.';
      isValid = false;
    } else {
      nameError = null;
    }

    // Email validation (regex)
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (email.trim().isEmpty) {
      emailError = 'Email is required.';
      isValid = false;
    } else if (!emailRegex.hasMatch(email.trim())) {
      emailError = 'Please enter a valid email address.';
      isValid = false;
    } else {
      emailError = null;
    }

    // Message validation
    if (message.trim().isEmpty) {
      messageError = 'Message is required.';
      isValid = false;
    } else if (message.trim().length < 10) {
      messageError = 'Message must be at least 10 characters.';
      isValid = false;
    } else {
      messageError = null;
    }

    return isValid;
  }

  void _handleSubmit() {
    setState(() {
      if (_validate()) {
        submitted = true;
        print('Form submitted: name=$name, email=$email, message=$message');
      }
    });
  }

  @override
  Component build(BuildContext context) {
    return div(classes: 'section-container', id: 'contact', [
      h2(classes: 'section-title', [.text('Get In Touch')]),
      p(classes: 'section-subtitle', [
        .text('Have a project in mind or want to collaborate? Drop me a message!'),
      ]),
      div(classes: 'contact-section', [
        if (submitted)
          div(classes: 'form-success', [
            .text('✅ Thank you! Your message has been sent successfully.'),
          ])
        else ...[
          // Name field
          div(classes: 'form-group', [
            label(classes: 'form-label', htmlFor: 'contact-name', [
              .text('Full Name'),
            ]),
            input(
              type: InputType.text,
              id: 'contact-name',
              classes: 'form-input${nameError != null ? ' error' : ''}',
              attributes: {'placeholder': 'Nazmus Sakib Abir'},
              value: name,
              onInput: (String value) {
                setState(() => name = value);
              },
            ),
            if (nameError != null) div(classes: 'form-error', [.text(nameError!)]),
          ]),
          // Email field
          div(classes: 'form-group', [
            label(classes: 'form-label', htmlFor: 'contact-email', [
              .text('Email Address'),
            ]),
            input(
              type: InputType.email,
              id: 'contact-email',
              classes: 'form-input${emailError != null ? ' error' : ''}',
              attributes: {'placeholder': 'you@example.com'},
              value: email,
              onInput: (String value) {
                setState(() => email = value);
              },
            ),
            if (emailError != null) div(classes: 'form-error', [.text(emailError!)]),
          ]),
          // Message field
          div(classes: 'form-group', [
            label(classes: 'form-label', htmlFor: 'contact-message', [
              .text('Your Message'),
            ]),
            textarea(
              id: 'contact-message',
              classes: 'form-textarea${messageError != null ? ' error' : ''}',
              placeholder: 'Tell me about your project...',
              rows: 5,
              onInput: (String value) {
                setState(() => message = value);
              },
              [.text(message)],
            ),
            if (messageError != null) div(classes: 'form-error', [.text(messageError!)]),
          ]),
          // Submit button
          button(
            classes: 'btn btn-primary btn-submit',
            onClick: _handleSubmit,
            [.text('Send Message →')],
          ),
        ],
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [];
}
