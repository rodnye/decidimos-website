# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# You can remove the 'faker' gem if you do not want Decidim seeds.

# Decidim.seed!
org = Decidim::Organization.find_or_initialize_by(host: "localhost")

org.update!(
  name: { "es" => "Decidimos" },
  default_locale: "es",
  available_locales: %w(es en de fr pt),
  secondary_hosts: ["0.0.0.0", "127.0.0.1", "localhost"],
  colors: {
    primary: "#53bf40",
    secondary: "#4053bf",
    tertiary: "#bf4053"
  },
  reference_prefix: "this-",
  file_upload_settings: {
    maximum_file_size: { avatar: 5.0, default: 10.0 },
    allowed_content_types: {
      admin: [
        "image/*", "application/vnd.oasis.opendocument",
        "application/vnd.ms-*", "application/msword",
        "application/vnd.ms-word", "application/vnd.openxmlformats-officedocument",
        "application/pdf", "application/rtf", "application/json",
        "text/markdown", "text/plain", "text/csv"
      ],
      default: ["image/*", "application/pdf", "application/rtf", "text/plain"]
    },
    allowed_file_extensions: {
      admin: %w(jpg jpeg png webp pdf doc docx xls xlsx ppt pptx ppx rtf txt odt ott odf otg ods ots csv json md),
      image: %w(jpg jpeg png webp),
      default: %w(jpg jpeg png webp pdf rtf txt)
    }
  },
  badges_enabled: true,
  send_welcome_notification: true,
  welcome_notification_subject: "",
  welcome_notification_body: "",
  users_registration_mode: 0,
  id_documents_methods: ["online"],
  user_groups_enabled: true,
  external_domain_allowlist: %w(decidim.org github.com),
  content_security_policy: {
    "img-src" => "",
    "font-src" => "",
    "frame-src" => "",
    "media-src" => "",
    "style-src" => "",
    "script-src" => "",
    "connect-src" => "",
    "default-src" => ""
  },
  omniauth_settings: {
    "omniauth_settings_developer_icon" => "",
    "omniauth_settings_developer_enabled" => false
  },
  time_zone: "UTC",
  comments_max_length: 1000,
  force_users_to_authenticate_before_access_organization: false,
  rich_text_editor_in_public_views: false,
  enable_machine_translations: false,
  machine_translation_display_priority: "original",
  highlighted_content_banner_enabled: false,
  enable_participatory_space_filters: true
)
