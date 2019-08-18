.class public Lcom/android/gallery3d/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/exif/ExifInterface$ColorSpace;,
        Lcom/android/gallery3d/exif/ExifInterface$ComponentsConfiguration;,
        Lcom/android/gallery3d/exif/ExifInterface$Compression;,
        Lcom/android/gallery3d/exif/ExifInterface$Contrast;,
        Lcom/android/gallery3d/exif/ExifInterface$ExposureMode;,
        Lcom/android/gallery3d/exif/ExifInterface$ExposureProgram;,
        Lcom/android/gallery3d/exif/ExifInterface$FileSource;,
        Lcom/android/gallery3d/exif/ExifInterface$Flash;,
        Lcom/android/gallery3d/exif/ExifInterface$GainControl;,
        Lcom/android/gallery3d/exif/ExifInterface$GpsAltitudeRef;,
        Lcom/android/gallery3d/exif/ExifInterface$GpsDifferential;,
        Lcom/android/gallery3d/exif/ExifInterface$GpsLatitudeRef;,
        Lcom/android/gallery3d/exif/ExifInterface$GpsLongitudeRef;,
        Lcom/android/gallery3d/exif/ExifInterface$GpsMeasureMode;,
        Lcom/android/gallery3d/exif/ExifInterface$GpsSpeedRef;,
        Lcom/android/gallery3d/exif/ExifInterface$GpsStatus;,
        Lcom/android/gallery3d/exif/ExifInterface$GpsTrackRef;,
        Lcom/android/gallery3d/exif/ExifInterface$LightSource;,
        Lcom/android/gallery3d/exif/ExifInterface$MeteringMode;,
        Lcom/android/gallery3d/exif/ExifInterface$Orientation;,
        Lcom/android/gallery3d/exif/ExifInterface$PhotometricInterpretation;,
        Lcom/android/gallery3d/exif/ExifInterface$PlanarConfiguration;,
        Lcom/android/gallery3d/exif/ExifInterface$ResolutionUnit;,
        Lcom/android/gallery3d/exif/ExifInterface$Saturation;,
        Lcom/android/gallery3d/exif/ExifInterface$SceneCapture;,
        Lcom/android/gallery3d/exif/ExifInterface$SceneType;,
        Lcom/android/gallery3d/exif/ExifInterface$SensingMethod;,
        Lcom/android/gallery3d/exif/ExifInterface$Sharpness;,
        Lcom/android/gallery3d/exif/ExifInterface$SubjectDistance;,
        Lcom/android/gallery3d/exif/ExifInterface$WhiteBalance;,
        Lcom/android/gallery3d/exif/ExifInterface$YCbCrPositioning;
    }
.end annotation


# static fields
.field private static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd kk:mm:ss"

.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final DEFINITION_NULL:I = 0x0

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field public static final IFD_NULL:I = -0x1

.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_NULL:I = -0x1

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/android/gallery3d/exif/ExifData;

.field private final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mGPSDateStampFormat:Ljava/text/DateFormat;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 75
    const/16 v0, 0x100

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 74
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    .line 77
    const/16 v0, 0x101

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 76
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 79
    const/16 v0, 0x102

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 78
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    .line 81
    const/16 v0, 0x103

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 80
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPRESSION:I

    .line 83
    const/16 v0, 0x106

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 82
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    .line 85
    const/16 v0, 0x10e

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 84
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    .line 87
    const/16 v0, 0x10f

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 86
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    .line 89
    const/16 v0, 0x110

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 88
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    .line 91
    const/16 v0, 0x111

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 90
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 93
    const/16 v0, 0x112

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 92
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 95
    const/16 v0, 0x115

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 94
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    .line 97
    const/16 v0, 0x116

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 96
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    .line 99
    const/16 v0, 0x117

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 98
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 101
    const/16 v0, 0x11a

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 100
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_X_RESOLUTION:I

    .line 103
    const/16 v0, 0x11b

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 102
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    .line 105
    const/16 v0, 0x11c

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 104
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    .line 107
    const/16 v0, 0x128

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 106
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    .line 109
    const/16 v0, 0x12d

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 108
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    .line 111
    const/16 v0, 0x131

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 110
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    .line 113
    const/16 v0, 0x132

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 112
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 115
    const/16 v0, 0x13b

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 114
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ARTIST:I

    .line 117
    const/16 v0, 0x13e

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 116
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_WHITE_POINT:I

    .line 119
    const/16 v0, 0x13f

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 118
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    .line 121
    const/16 v0, 0x211

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 120
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    .line 123
    const/16 v0, 0x212

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 122
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    .line 125
    const/16 v0, 0x213

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 124
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    .line 127
    const/16 v0, 0x214

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 126
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    .line 129
    const/16 v0, -0x7d68

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 128
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COPYRIGHT:I

    .line 131
    const/16 v0, -0x7897

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 130
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 133
    const/16 v0, -0x77db

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 132
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    .line 136
    const/16 v0, 0x201

    invoke-static {v4, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 135
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 138
    const/16 v0, 0x202

    invoke-static {v4, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 137
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 141
    const/16 v0, -0x7d66

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 140
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    .line 143
    const/16 v0, -0x7d63

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 142
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    .line 145
    const/16 v0, -0x77de

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 144
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    .line 147
    const/16 v0, -0x77dc

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 146
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    .line 149
    const/16 v0, -0x77d9

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 148
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    .line 151
    const/16 v0, -0x77d8

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 150
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_OECF:I

    .line 153
    const/16 v0, -0x7000

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 152
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_VERSION:I

    .line 155
    const/16 v0, -0x6ffd

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 154
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    .line 157
    const/16 v0, -0x6ffc

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 156
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    .line 159
    const/16 v0, -0x6eff

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 158
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    .line 161
    const/16 v0, -0x6efe

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 160
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    .line 163
    const/16 v0, -0x6dff

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 162
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    .line 165
    const/16 v0, -0x6dfe

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 164
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    .line 167
    const/16 v0, -0x6dfd

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 166
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    .line 169
    const/16 v0, -0x6dfc

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 168
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    .line 171
    const/16 v0, -0x6dfb

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 170
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    .line 173
    const/16 v0, -0x6dfa

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 172
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    .line 175
    const/16 v0, -0x6df9

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 174
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_METERING_MODE:I

    .line 177
    const/16 v0, -0x6df8

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 176
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    .line 179
    const/16 v0, -0x6df7

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 178
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    .line 181
    const/16 v0, -0x6df6

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 180
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    .line 183
    const/16 v0, -0x6dec

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 182
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    .line 185
    const/16 v0, -0x6d84

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 184
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKER_NOTE:I

    .line 187
    const/16 v0, -0x6d7a

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 186
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    .line 189
    const/16 v0, -0x6d70

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 188
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    .line 191
    const/16 v0, -0x6d6f

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 190
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    .line 193
    const/16 v0, -0x6d6e

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 192
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    .line 195
    const/16 v0, -0x6000

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 194
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    .line 197
    const/16 v0, -0x5fff

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 196
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COLOR_SPACE:I

    .line 199
    const/16 v0, -0x5ffe

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 198
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    .line 201
    const/16 v0, -0x5ffd

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 200
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    .line 203
    const/16 v0, -0x5ffc

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 202
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    .line 205
    const/16 v0, -0x5ffb

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 204
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 207
    const/16 v0, -0x5df5

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 206
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    .line 209
    const/16 v0, -0x5df4

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 208
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    .line 211
    const/16 v0, -0x5df2

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 210
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    .line 213
    const/16 v0, -0x5df1

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 212
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    .line 215
    const/16 v0, -0x5df0

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 214
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    .line 217
    const/16 v0, -0x5dec

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 216
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    .line 219
    const/16 v0, -0x5deb

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 218
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    .line 221
    const/16 v0, -0x5de9

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 220
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SENSING_METHOD:I

    .line 223
    const/16 v0, -0x5d00

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 222
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FILE_SOURCE:I

    .line 225
    const/16 v0, -0x5cff

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 224
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SCENE_TYPE:I

    .line 227
    const/16 v0, -0x5cfe

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 226
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CFA_PATTERN:I

    .line 229
    const/16 v0, -0x5bff

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 228
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    .line 231
    const/16 v0, -0x5bfe

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 230
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    .line 233
    const/16 v0, -0x5bfd

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 232
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    .line 235
    const/16 v0, -0x5bfc

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 234
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    .line 237
    const/16 v0, -0x5bfb

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 236
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    .line 239
    const/16 v0, -0x5bfa

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 238
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    .line 241
    const/16 v0, -0x5bf9

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 240
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    .line 243
    const/16 v0, -0x5bf8

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 242
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CONTRAST:I

    .line 245
    const/16 v0, -0x5bf7

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 244
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SATURATION:I

    .line 247
    const/16 v0, -0x5bf6

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 246
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SHARPNESS:I

    .line 249
    const/16 v0, -0x5bf5

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 248
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    .line 251
    const/16 v0, -0x5bf4

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 250
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    .line 253
    const/16 v0, -0x5be0

    invoke-static {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 252
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    .line 256
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 255
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 258
    invoke-static {v2, v4}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 257
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 260
    invoke-static {v2, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 259
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    .line 262
    invoke-static {v2, v5}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 261
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 264
    invoke-static {v2, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 263
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    .line 266
    const/4 v0, 0x5

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 265
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    .line 268
    const/4 v0, 0x6

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 267
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    .line 270
    const/4 v0, 0x7

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 269
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    .line 272
    const/16 v0, 0x8

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 271
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    .line 274
    const/16 v0, 0x9

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 273
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_STATUS:I

    .line 276
    const/16 v0, 0xa

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 275
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    .line 278
    const/16 v0, 0xb

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 277
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DOP:I

    .line 280
    const/16 v0, 0xc

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 279
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    .line 282
    const/16 v0, 0xd

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 281
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED:I

    .line 284
    const/16 v0, 0xe

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 283
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    .line 286
    const/16 v0, 0xf

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 285
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK:I

    .line 288
    const/16 v0, 0x10

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 287
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    .line 290
    const/16 v0, 0x11

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 289
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    .line 292
    const/16 v0, 0x12

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 291
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    .line 294
    const/16 v0, 0x13

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 293
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    .line 296
    const/16 v0, 0x14

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 295
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    .line 298
    const/16 v0, 0x15

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 297
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    .line 300
    const/16 v0, 0x16

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 299
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    .line 302
    const/16 v0, 0x17

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 301
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    .line 304
    const/16 v0, 0x18

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 303
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    .line 306
    const/16 v0, 0x19

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 305
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    .line 308
    const/16 v0, 0x1a

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 307
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    .line 310
    const/16 v0, 0x1b

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 309
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    .line 312
    const/16 v0, 0x1c

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 311
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    .line 314
    const/16 v0, 0x1d

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 313
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    .line 316
    const/16 v0, 0x1e

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 315
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 319
    invoke-static {v5, v4}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 318
    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 325
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 327
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    .line 339
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 711
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/android/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    .line 1948
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    new-instance v0, Lcom/android/gallery3d/exif/ExifData;

    sget-object v1, Lcom/android/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    .line 1949
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 1950
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 1952
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 2062
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 714
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 715
    return-void
.end method

.method protected static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 2053
    if-eqz p0, :cond_0

    .line 2055
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2060
    :cond_0
    :goto_0
    return-void

    .line 2056
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static convertLatOrLongToDouble([Lcom/android/gallery3d/exif/Rational;Ljava/lang/String;)D
    .locals 14
    .param p0, "coordinate"    # [Lcom/android/gallery3d/exif/Rational;
    .param p1, "reference"    # Ljava/lang/String;

    .prologue
    .line 1911
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v0

    .line 1912
    .local v0, "degrees":D
    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v4

    .line 1913
    .local v4, "minutes":D
    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v8

    .line 1914
    .local v8, "seconds":D
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double v10, v4, v10

    add-double/2addr v10, v0

    const-wide v12, 0x40ac200000000000L    # 3600.0

    div-double v12, v8, v12

    add-double v6, v10, v12

    .line 1915
    .local v6, "result":D
    const-string v3, "S"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "W"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1916
    :cond_0
    neg-double v6, v6

    .line 1918
    .end local v6    # "result":D
    :cond_1
    return-wide v6

    .line 1919
    .end local v0    # "degrees":D
    .end local v4    # "minutes":D
    .end local v8    # "seconds":D
    :catch_0
    move-exception v2

    .line 1920
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public static defineTag(IS)I
    .locals 2
    .param p0, "ifdId"    # I
    .param p1, "tagId"    # S

    .prologue
    .line 348
    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 2044
    new-array v0, v4, [B

    .line 2045
    .local v0, "buf":[B
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 2046
    .local v1, "ret":I
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2050
    return-void

    .line 2047
    :cond_0
    invoke-virtual {p2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 2048
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2347
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method protected static getAllowedIfdsFromInfo(I)[I
    .locals 10
    .param p0, "info"    # I

    .prologue
    .line 2351
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v2

    .line 2352
    .local v2, "ifdFlags":I
    invoke-static {}, Lcom/android/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v3

    .line 2353
    .local v3, "ifds":[I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2354
    .local v6, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v8, 0x5

    if-lt v1, v8, :cond_1

    .line 2360
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_3

    .line 2361
    const/4 v7, 0x0

    .line 2368
    :cond_0
    return-object v7

    .line 2355
    :cond_1
    shr-int v8, v2, v1

    and-int/lit8 v0, v8, 0x1

    .line 2356
    .local v0, "flag":I
    const/4 v8, 0x1

    if-ne v0, v8, :cond_2

    .line 2357
    aget v8, v3, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2354
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2363
    .end local v0    # "flag":I
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [I

    .line 2364
    .local v7, "ret":[I
    const/4 v4, 0x0

    .line 2365
    .local v4, "j":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2366
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    aput v1, v7, v4

    move v4, v5

    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto :goto_1
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2404
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8
    .param p0, "allowedIfds"    # [I

    .prologue
    const/4 v4, 0x0

    .line 2383
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_2

    :cond_0
    move v0, v4

    .line 2396
    :cond_1
    return v0

    .line 2386
    :cond_2
    const/4 v0, 0x0

    .line 2387
    .local v0, "flags":I
    invoke-static {}, Lcom/android/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v2

    .line 2388
    .local v2, "ifds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_1

    .line 2389
    array-length v6, p0

    move v5, v4

    :goto_1
    if-lt v5, v6, :cond_3

    .line 2388
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2389
    :cond_3
    aget v3, p0, v5

    .line 2390
    .local v3, "j":I
    aget v7, v2, v1

    if-ne v7, v3, :cond_4

    .line 2391
    const/4 v5, 0x1

    shl-int/2addr v5, v1

    or-int/2addr v0, v5

    .line 2392
    goto :goto_2

    .line 2389
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static getOrientationValueForRotation(I)S
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    .line 1861
    rem-int/lit16 p0, p0, 0x168

    .line 1862
    if-gez p0, :cond_0

    .line 1863
    add-int/lit16 p0, p0, 0x168

    .line 1865
    :cond_0
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_1

    .line 1866
    const/4 v0, 0x1

    .line 1872
    :goto_0
    return v0

    .line 1867
    :cond_1
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_2

    .line 1868
    const/4 v0, 0x6

    goto :goto_0

    .line 1869
    :cond_2
    const/16 v0, 0x10e

    if-ge p0, v0, :cond_3

    .line 1870
    const/4 v0, 0x3

    goto :goto_0

    .line 1872
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static getRotationForOrientationValue(S)I
    .locals 1
    .param p0, "orientation"    # S

    .prologue
    const/4 v0, 0x0

    .line 1883
    packed-switch p0, :pswitch_data_0

    .line 1893
    :goto_0
    :pswitch_0
    return v0

    .line 1887
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 1889
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 1891
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 1883
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getTrueIfd(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 363
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getTrueTagKey(I)S
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 356
    int-to-short v0, p0

    return v0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2400
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private initTagInfo()V
    .locals 13

    .prologue
    .line 2080
    const/4 v10, 0x2

    new-array v5, v10, [I

    const/4 v10, 0x1

    .line 2081
    const/4 v11, 0x1

    aput v11, v5, v10

    .line 2083
    .local v5, "ifdAllowedIfds":[I
    invoke-static {v5}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v6, v10, 0x18

    .line 2084
    .local v6, "ifdFlags":I
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    .line 2085
    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    .line 2084
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2086
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    .line 2087
    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    .line 2086
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2088
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 2089
    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    .line 2088
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2090
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    .line 2091
    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    .line 2090
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2092
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPRESSION:I

    .line 2093
    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    .line 2092
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2094
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    .line 2095
    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    .line 2094
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2096
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    .line 2097
    or-int/lit8 v12, v12, 0x1

    .line 2096
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2098
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    .line 2099
    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    .line 2098
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2100
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    .line 2101
    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    .line 2100
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2102
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    .line 2103
    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    .line 2102
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2104
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    .line 2105
    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    .line 2104
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2106
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_X_RESOLUTION:I

    .line 2107
    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    .line 2106
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2108
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    .line 2109
    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    .line 2108
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2110
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    .line 2111
    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    .line 2110
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2112
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 2113
    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    .line 2112
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2114
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    .line 2115
    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    .line 2114
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2116
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 2117
    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    .line 2116
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2118
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    .line 2119
    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit16 v12, v12, 0x300

    .line 2118
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2120
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_WHITE_POINT:I

    .line 2121
    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    .line 2120
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2122
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    .line 2123
    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    .line 2122
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2124
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    .line 2125
    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    .line 2124
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2126
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    .line 2127
    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    .line 2126
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2128
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 2129
    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x14

    .line 2128
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2130
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    .line 2131
    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    .line 2130
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2132
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    .line 2133
    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    .line 2132
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2134
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    .line 2135
    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    .line 2134
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2136
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    .line 2137
    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    .line 2136
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2138
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ARTIST:I

    .line 2139
    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    .line 2138
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2140
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COPYRIGHT:I

    .line 2141
    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    .line 2140
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2142
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 2143
    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    .line 2142
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2144
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    .line 2145
    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    .line 2144
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2147
    const/4 v10, 0x1

    new-array v4, v10, [I

    const/4 v10, 0x0

    .line 2148
    const/4 v11, 0x1

    aput v11, v4, v10

    .line 2150
    .local v4, "ifd1AllowedIfds":[I
    invoke-static {v4}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v7, v10, 0x18

    .line 2151
    .local v7, "ifdFlags1":I
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 2152
    const/high16 v12, 0x40000

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    .line 2151
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2153
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 2154
    const/high16 v12, 0x40000

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    .line 2153
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2156
    const/4 v10, 0x1

    new-array v0, v10, [I

    const/4 v10, 0x0

    .line 2157
    const/4 v11, 0x2

    aput v11, v0, v10

    .line 2159
    .local v0, "exifAllowedIfds":[I
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v1, v10, 0x18

    .line 2160
    .local v1, "exifFlags":I
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_VERSION:I

    .line 2161
    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    .line 2160
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2162
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    .line 2163
    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    .line 2162
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2164
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COLOR_SPACE:I

    .line 2165
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2164
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2166
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    .line 2167
    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    .line 2166
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2168
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    .line 2169
    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2168
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2170
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    .line 2171
    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2170
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2172
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    .line 2173
    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2172
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2174
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKER_NOTE:I

    .line 2175
    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    .line 2174
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2176
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    .line 2177
    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    .line 2176
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2178
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    .line 2179
    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0xd

    .line 2178
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2180
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    .line 2181
    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    .line 2180
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2182
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    .line 2183
    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    .line 2182
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2184
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    .line 2185
    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    .line 2184
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2186
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    .line 2187
    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    .line 2186
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2188
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    .line 2189
    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    .line 2188
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2190
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    .line 2191
    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x21

    .line 2190
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2192
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    .line 2193
    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2192
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2194
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    .line 2195
    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2194
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2196
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    .line 2197
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2196
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2198
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    .line 2199
    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    .line 2198
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2200
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    .line 2201
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    .line 2200
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2202
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_OECF:I

    .line 2203
    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    .line 2202
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2204
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    .line 2205
    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2204
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2206
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    .line 2207
    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2206
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2208
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    .line 2209
    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2208
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2210
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    .line 2211
    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2210
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2212
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    .line 2213
    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2212
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2214
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    .line 2215
    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2214
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2216
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_METERING_MODE:I

    .line 2217
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2216
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2218
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    .line 2219
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2218
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2220
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    .line 2221
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2220
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2222
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    .line 2223
    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2222
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2224
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    .line 2225
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    .line 2224
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2226
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    .line 2227
    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2226
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2228
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    .line 2229
    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    .line 2228
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2230
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    .line 2231
    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2230
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2232
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    .line 2233
    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2232
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2234
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    .line 2235
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2234
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2236
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    .line 2237
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x2

    .line 2236
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2238
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    .line 2239
    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2238
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2240
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SENSING_METHOD:I

    .line 2241
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2240
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2242
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FILE_SOURCE:I

    .line 2243
    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2242
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2244
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SCENE_TYPE:I

    .line 2245
    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2244
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2246
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CFA_PATTERN:I

    .line 2247
    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    .line 2246
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2248
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    .line 2249
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2248
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2250
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    .line 2251
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2250
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2252
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    .line 2253
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2252
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2254
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    .line 2255
    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2254
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2256
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    .line 2257
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2256
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2258
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    .line 2259
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2258
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2260
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    .line 2261
    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2260
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2262
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CONTRAST:I

    .line 2263
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2262
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2264
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SATURATION:I

    .line 2265
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2264
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2266
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SHARPNESS:I

    .line 2267
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2266
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2268
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    .line 2269
    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    .line 2268
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2270
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    .line 2271
    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2270
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2272
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 2273
    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    .line 2272
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2275
    const/4 v10, 0x1

    new-array v2, v10, [I

    const/4 v10, 0x0

    .line 2276
    const/4 v11, 0x4

    aput v11, v2, v10

    .line 2278
    .local v2, "gpsAllowedIfds":[I
    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v3, v10, 0x18

    .line 2279
    .local v3, "gpsFlags":I
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 2280
    const/high16 v12, 0x10000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x4

    .line 2279
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2281
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 2282
    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    .line 2281
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2283
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 2284
    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    .line 2283
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2285
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    .line 2286
    const/high16 v12, 0xa0000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    .line 2285
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2287
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    .line 2288
    const/high16 v12, 0xa0000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    .line 2287
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2289
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    .line 2290
    const/high16 v12, 0x10000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    .line 2289
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2291
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    .line 2292
    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    .line 2291
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2293
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    .line 2294
    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    .line 2293
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2295
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    .line 2296
    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    .line 2295
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2297
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_STATUS:I

    .line 2298
    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    .line 2297
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2299
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    .line 2300
    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    .line 2299
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2301
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DOP:I

    .line 2302
    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    .line 2301
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2303
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    .line 2304
    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    .line 2303
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2305
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED:I

    .line 2306
    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    .line 2305
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2307
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    .line 2308
    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    .line 2307
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2309
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK:I

    .line 2310
    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    .line 2309
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2311
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    .line 2312
    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    .line 2311
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2313
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    .line 2314
    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    .line 2313
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2315
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    .line 2316
    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    .line 2315
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2317
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    .line 2318
    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    .line 2317
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2319
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    .line 2320
    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    .line 2319
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2321
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    .line 2322
    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    .line 2321
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2323
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    .line 2324
    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    .line 2323
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2325
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    .line 2326
    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    .line 2325
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2327
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    .line 2328
    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    .line 2327
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2329
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    .line 2330
    const/high16 v12, 0x70000

    or-int/2addr v12, v3

    .line 2329
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2331
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    .line 2332
    const/high16 v12, 0x70000

    or-int/2addr v12, v3

    .line 2331
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2333
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    .line 2334
    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    .line 2333
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2335
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 2336
    const/high16 v12, 0x30000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    .line 2335
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2338
    const/4 v10, 0x1

    new-array v8, v10, [I

    const/4 v10, 0x0

    .line 2339
    const/4 v11, 0x3

    aput v11, v8, v10

    .line 2341
    .local v8, "interopAllowedIfds":[I
    invoke-static {v8}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v9, v10, 0x18

    .line 2342
    .local v9, "interopFlags":I
    iget-object v10, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2344
    return-void
.end method

.method protected static isIfdAllowed(II)Z
    .locals 5
    .param p0, "info"    # I
    .param p1, "ifd"    # I

    .prologue
    const/4 v3, 0x1

    .line 2372
    invoke-static {}, Lcom/android/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v2

    .line 2373
    .local v2, "ifds":[I
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    .line 2374
    .local v1, "ifdFlags":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_1

    .line 2379
    const/4 v3, 0x0

    :cond_0
    return v3

    .line 2375
    :cond_1
    aget v4, v2, v0

    if-ne p1, v4, :cond_2

    shr-int v4, v1, v0

    and-int/lit8 v4, v4, 0x1

    if-eq v4, v3, :cond_0

    .line 2374
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static isOffsetTag(S)Z
    .locals 2
    .param p0, "tag"    # S

    .prologue
    .line 1483
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static toExifLatLong(D)[Lcom/android/gallery3d/exif/Rational;
    .locals 10
    .param p0, "value"    # D

    .prologue
    const-wide/16 v8, 0x1

    .line 2032
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 2033
    double-to-int v0, p0

    .line 2034
    .local v0, "degrees":I
    int-to-double v4, v0

    sub-double v4, p0, v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double p0, v4, v6

    .line 2035
    double-to-int v1, p0

    .line 2036
    .local v1, "minutes":I
    int-to-double v4, v1

    sub-double v4, p0, v4

    const-wide v6, 0x40b7700000000000L    # 6000.0

    mul-double p0, v4, v6

    .line 2037
    double-to-int v2, p0

    .line 2038
    .local v2, "seconds":I
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/android/gallery3d/exif/Rational;

    const/4 v4, 0x0

    .line 2039
    new-instance v5, Lcom/android/gallery3d/exif/Rational;

    int-to-long v6, v0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/android/gallery3d/exif/Rational;

    int-to-long v6, v1

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lcom/android/gallery3d/exif/Rational;

    int-to-long v6, v2

    const-wide/16 v8, 0x64

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    .line 2038
    return-object v3
.end method


# virtual methods
.method public addDateTimeStampTag(IJLjava/util/TimeZone;)Z
    .locals 4
    .param p1, "tagId"    # I
    .param p2, "timestamp"    # J
    .param p4, "timezone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v1, 0x0

    .line 1965
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    if-eq p1, v2, :cond_0

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v2, :cond_0

    .line 1966
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v2, :cond_1

    .line 1967
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1968
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1969
    .local v0, "t":Lcom/android/gallery3d/exif/ExifTag;
    if-nez v0, :cond_2

    .line 1976
    .end local v0    # "t":Lcom/android/gallery3d/exif/ExifTag;
    :cond_1
    :goto_0
    return v1

    .line 1972
    .restart local v0    # "t":Lcom/android/gallery3d/exif/ExifTag;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 1976
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addGpsDateTimeStampTag(J)Z
    .locals 13
    .param p1, "timestamp"    # J

    .prologue
    const/4 v2, 0x1

    const-wide/16 v10, 0x1

    const/4 v1, 0x0

    .line 2012
    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2013
    .local v0, "t":Lcom/android/gallery3d/exif/ExifTag;
    if-nez v0, :cond_1

    .line 2027
    :cond_0
    :goto_0
    return v1

    .line 2016
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 2017
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2018
    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/android/gallery3d/exif/Rational;

    .line 2019
    new-instance v5, Lcom/android/gallery3d/exif/Rational;

    iget-object v6, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v10, v11}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v5, v4, v1

    .line 2020
    new-instance v5, Lcom/android/gallery3d/exif/Rational;

    iget-object v6, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v10, v11}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v5, v4, v2

    const/4 v5, 0x2

    .line 2021
    new-instance v6, Lcom/android/gallery3d/exif/Rational;

    iget-object v7, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v8, v7

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v6, v4, v5

    .line 2018
    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2023
    if-eqz v0, :cond_0

    .line 2026
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    move v1, v2

    .line 2027
    goto :goto_0
.end method

.method public addGpsTags(DD)Z
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    const-wide/16 v6, 0x0

    .line 1987
    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->toExifLatLong(D)[Lcom/android/gallery3d/exif/Rational;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    .line 1988
    .local v1, "latTag":Lcom/android/gallery3d/exif/ExifTag;
    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lcom/android/gallery3d/exif/ExifInterface;->toExifLatLong(D)[Lcom/android/gallery3d/exif/Rational;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 1989
    .local v3, "longTag":Lcom/android/gallery3d/exif/ExifTag;
    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 1990
    cmpl-double v4, p1, v6

    if-ltz v4, :cond_1

    const-string v4, "N"

    .line 1989
    :goto_0
    invoke-virtual {p0, v5, v4}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1992
    .local v0, "latRefTag":Lcom/android/gallery3d/exif/ExifTag;
    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 1993
    cmpl-double v4, p3, v6

    if-ltz v4, :cond_2

    const-string v4, "E"

    .line 1992
    :goto_1
    invoke-virtual {p0, v5, v4}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    .line 1995
    .local v2, "longRefTag":Lcom/android/gallery3d/exif/ExifTag;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-nez v2, :cond_3

    .line 1996
    :cond_0
    const/4 v4, 0x0

    .line 2002
    :goto_2
    return v4

    .line 1991
    .end local v0    # "latRefTag":Lcom/android/gallery3d/exif/ExifTag;
    .end local v2    # "longRefTag":Lcom/android/gallery3d/exif/ExifTag;
    :cond_1
    const-string v4, "S"

    goto :goto_0

    .line 1994
    .restart local v0    # "latRefTag":Lcom/android/gallery3d/exif/ExifTag;
    :cond_2
    const-string v4, "W"

    goto :goto_1

    .line 1998
    .restart local v2    # "longRefTag":Lcom/android/gallery3d/exif/ExifTag;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 1999
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 2000
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 2001
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 2002
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;
    .locals 8
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1498
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1499
    .local v6, "info":I
    if-eqz v6, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move-object v0, v7

    .line 1512
    :cond_1
    :goto_0
    return-object v0

    .line 1502
    :cond_2
    invoke-static {v6}, Lcom/android/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1503
    .local v2, "type":S
    invoke-static {v6}, Lcom/android/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    .line 1504
    .local v3, "definedCount":I
    if-eqz v3, :cond_3

    const/4 v5, 0x1

    .line 1505
    .local v5, "hasDefinedCount":Z
    :goto_1
    invoke-static {v6, p2}, Lcom/android/gallery3d/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v7

    .line 1506
    goto :goto_0

    .line 1504
    .end local v5    # "hasDefinedCount":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1508
    .restart local v5    # "hasDefinedCount":Z
    :cond_4
    new-instance v0, Lcom/android/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 1509
    .local v0, "t":Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v0, p3}, Lcom/android/gallery3d/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v7

    .line 1510
    goto :goto_0
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 1523
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    .line 1524
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method protected buildUninitializedTag(I)Lcom/android/gallery3d/exif/ExifTag;
    .locals 7
    .param p1, "tagId"    # I

    .prologue
    .line 1528
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1529
    .local v6, "info":I
    if-nez v6, :cond_0

    .line 1530
    const/4 v0, 0x0

    .line 1537
    :goto_0
    return-object v0

    .line 1532
    :cond_0
    invoke-static {v6}, Lcom/android/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1533
    .local v2, "type":S
    invoke-static {v6}, Lcom/android/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    .line 1534
    .local v3, "definedCount":I
    if-eqz v3, :cond_1

    const/4 v5, 0x1

    .line 1535
    .local v5, "hasDefinedCount":Z
    :goto_1
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v4

    .line 1536
    .local v4, "ifdId":I
    new-instance v0, Lcom/android/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 1537
    .local v0, "t":Lcom/android/gallery3d/exif/ExifTag;
    goto :goto_0

    .line 1534
    .end local v0    # "t":Lcom/android/gallery3d/exif/ExifTag;
    .end local v4    # "ifdId":I
    .end local v5    # "hasDefinedCount":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public clearExif()V
    .locals 2

    .prologue
    .line 786
    new-instance v0, Lcom/android/gallery3d/exif/ExifData;

    sget-object v1, Lcom/android/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    .line 787
    return-void
.end method

.method public deleteTag(I)V
    .locals 1
    .param p1, "tagId"    # I

    .prologue
    .line 1615
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1616
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->deleteTag(II)V

    .line 1617
    return-void
.end method

.method public deleteTag(II)V
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/gallery3d/exif/ExifData;->removeTag(SI)V

    .line 1607
    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1134
    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1097
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/gallery3d/exif/ExifTag;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1099
    iget-object v6, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    .line 1100
    .local v6, "tempData":Lcom/android/gallery3d/exif/ExifData;
    new-instance v7, Lcom/android/gallery3d/exif/ExifData;

    sget-object v8, Lcom/android/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v7, v8}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v7, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    .line 1101
    const/4 v4, 0x0

    .line 1102
    .local v4, "is":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 1104
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1106
    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-direct {p0, v5, v1}, Lcom/android/gallery3d/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1107
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1108
    .local v3, "imageBytes":[B
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 1109
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    .line 1110
    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1115
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 1117
    iput-object v6, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    .line 1120
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "imageBytes":[B
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v6    # "tempData":Lcom/android/gallery3d/exif/ExifData;
    :cond_0
    return-void

    .line 1111
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "tempData":Lcom/android/gallery3d/exif/ExifData;
    :catch_0
    move-exception v2

    .line 1112
    .local v2, "e":Ljava/io/IOException;
    :goto_0
    :try_start_3
    invoke-static {v4}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1113
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1114
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1115
    :goto_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1117
    iput-object v6, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    .line 1118
    throw v7

    .line 1114
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_1

    .line 1111
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_0

    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public getActualTagCount(II)I
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1434
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1435
    .local v0, "t":Lcom/android/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1436
    const/4 v1, 0x0

    .line 1438
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    goto :goto_0
.end method

.method public getAllTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefinedTagCount(I)I
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1417
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1418
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1419
    const/4 v1, 0x0

    .line 1421
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v1

    goto :goto_0
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1450
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1451
    const/4 v1, -0x1

    .line 1453
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v1

    goto :goto_0
.end method

.method public getDefinedTagType(I)S
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1464
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1465
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1466
    const/4 v1, -0x1

    .line 1468
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v1

    goto :goto_0
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 3
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .prologue
    .line 962
    if-nez p1, :cond_0

    .line 963
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 965
    :cond_0
    new-instance v0, Lcom/android/gallery3d/exif/ExifOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/android/gallery3d/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/android/gallery3d/exif/ExifInterface;)V

    .line 966
    .local v0, "eos":Lcom/android/gallery3d/exif/ExifOutputStream;
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifOutputStream;->setExifData(Lcom/android/gallery3d/exif/ExifData;)V

    .line 967
    return-object v0
.end method

.method public getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 5
    .param p1, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 983
    if-nez p1, :cond_0

    .line 984
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 986
    :cond_0
    const/4 v1, 0x0

    .line 988
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    return-object v3

    .line 989
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 991
    throw v0
.end method

.method public getLatLongAsDoubles()[D
    .locals 8

    .prologue
    const/4 v6, 0x3

    .line 1933
    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/exif/ExifInterface;->getTagRationalValues(I)[Lcom/android/gallery3d/exif/Rational;

    move-result-object v1

    .line 1934
    .local v1, "latitude":[Lcom/android/gallery3d/exif/Rational;
    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v2

    .line 1935
    .local v2, "latitudeRef":Ljava/lang/String;
    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/exif/ExifInterface;->getTagRationalValues(I)[Lcom/android/gallery3d/exif/Rational;

    move-result-object v3

    .line 1936
    .local v3, "longitude":[Lcom/android/gallery3d/exif/Rational;
    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1937
    .local v4, "longitudeRef":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 1938
    array-length v5, v1

    if-lt v5, v6, :cond_0

    array-length v5, v3

    if-ge v5, v6, :cond_1

    .line 1939
    :cond_0
    const/4 v0, 0x0

    .line 1944
    :goto_0
    return-object v0

    .line 1941
    :cond_1
    const/4 v5, 0x2

    new-array v0, v5, [D

    .line 1942
    .local v0, "latLon":[D
    const/4 v5, 0x0

    invoke-static {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/android/gallery3d/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 1943
    const/4 v5, 0x1

    invoke-static {v3, v4}, Lcom/android/gallery3d/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/android/gallery3d/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5

    goto :goto_0
.end method

.method public getTag(I)Lcom/android/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1191
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1192
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method public getTag(II)Lcom/android/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1177
    invoke-static {p2}, Lcom/android/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    const/4 v0, 0x0

    .line 1180
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/gallery3d/exif/ExifData;->getTag(SI)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagByteValue(I)Ljava/lang/Byte;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1295
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1296
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagByteValue(II)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValue(II)Ljava/lang/Byte;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1284
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v0

    .line 1285
    .local v0, "l":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 1286
    :cond_0
    const/4 v1, 0x0

    .line 1288
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_0
.end method

.method public getTagByteValues(I)[B
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1371
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1372
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValues(II)[B
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1360
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1361
    .local v0, "t":Lcom/android/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1362
    const/4 v1, 0x0

    .line 1364
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method protected getTagDefinition(SI)I
    .locals 2
    .param p1, "tagId"    # S
    .param p2, "defaultIfd"    # I

    .prologue
    .line 1677
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method protected getTagDefinitionForTag(Lcom/android/gallery3d/exif/ExifTag;)I
    .locals 4
    .param p1, "tag"    # Lcom/android/gallery3d/exif/ExifTag;

    .prologue
    .line 1699
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v2

    .line 1700
    .local v2, "type":S
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    .line 1701
    .local v0, "count":I
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v1

    .line 1702
    .local v1, "ifd":I
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTagDefinitionForTag(SSII)I

    move-result v3

    return v3
.end method

.method protected getTagDefinitionForTag(SSII)I
    .locals 15
    .param p1, "tagId"    # S
    .param p2, "type"    # S
    .param p3, "count"    # I
    .param p4, "ifd"    # I

    .prologue
    .line 1706
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v4

    .line 1707
    .local v4, "defs":[I
    if-nez v4, :cond_1

    .line 1708
    const/4 v9, -0x1

    .line 1730
    :cond_0
    :goto_0
    return v9

    .line 1710
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v7

    .line 1711
    .local v7, "infos":Landroid/util/SparseIntArray;
    const/4 v9, -0x1

    .line 1712
    .local v9, "ret":I
    array-length v13, v4

    const/4 v11, 0x0

    move v12, v11

    :goto_1
    if-ge v12, v13, :cond_0

    aget v5, v4, v12

    .line 1713
    .local v5, "i":I
    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1714
    .local v6, "info":I
    invoke-static {v6}, Lcom/android/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v3

    .line 1715
    .local v3, "def_type":S
    invoke-static {v6}, Lcom/android/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v1

    .line 1716
    .local v1, "def_count":I
    invoke-static {v6}, Lcom/android/gallery3d/exif/ExifInterface;->getAllowedIfdsFromInfo(I)[I

    move-result-object v2

    .line 1717
    .local v2, "def_ifds":[I
    const/4 v10, 0x0

    .line 1718
    .local v10, "valid_ifd":Z
    array-length v14, v2

    const/4 v11, 0x0

    :goto_2
    if-lt v11, v14, :cond_3

    .line 1724
    :goto_3
    if-eqz v10, :cond_5

    move/from16 v0, p2

    if-ne v0, v3, :cond_5

    .line 1725
    move/from16 v0, p3

    if-eq v0, v1, :cond_2

    if-nez v1, :cond_5

    .line 1726
    :cond_2
    move v9, v5

    .line 1727
    goto :goto_0

    .line 1718
    :cond_3
    aget v8, v2, v11

    .line 1719
    .local v8, "j":I
    move/from16 v0, p4

    if-ne v8, v0, :cond_4

    .line 1720
    const/4 v10, 0x1

    .line 1721
    goto :goto_3

    .line 1718
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1712
    .end local v8    # "j":I
    :cond_5
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_1
.end method

.method protected getTagDefinitionsForTagId(S)[I
    .locals 11
    .param p1, "tagId"    # S

    .prologue
    const/4 v8, 0x0

    .line 1681
    invoke-static {}, Lcom/android/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v5

    .line 1682
    .local v5, "ifds":[I
    array-length v7, v5

    new-array v3, v7, [I

    .line 1683
    .local v3, "defs":[I
    const/4 v0, 0x0

    .line 1684
    .local v0, "counter":I
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 1685
    .local v6, "infos":Landroid/util/SparseIntArray;
    array-length v9, v5

    move v7, v8

    move v1, v0

    .end local v0    # "counter":I
    .local v1, "counter":I
    :goto_0
    if-lt v7, v9, :cond_0

    .line 1691
    if-nez v1, :cond_1

    .line 1692
    const/4 v7, 0x0

    .line 1695
    :goto_1
    return-object v7

    .line 1685
    :cond_0
    aget v4, v5, v7

    .line 1686
    .local v4, "i":I
    invoke-static {v4, p1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    .line 1687
    .local v2, "def":I
    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-eqz v10, :cond_2

    .line 1688
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "counter":I
    .restart local v0    # "counter":I
    aput v2, v3, v1

    .line 1685
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v1, v0

    .end local v0    # "counter":I
    .restart local v1    # "counter":I
    goto :goto_0

    .line 1695
    .end local v2    # "def":I
    .end local v4    # "i":I
    :cond_1
    invoke-static {v3, v8, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v7

    goto :goto_1

    .restart local v2    # "def":I
    .restart local v4    # "i":I
    :cond_2
    move v0, v1

    .end local v1    # "counter":I
    .restart local v0    # "counter":I
    goto :goto_2
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2066
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2067
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifInterface;->initTagInfo()V

    .line 2069
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1276
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1277
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1265
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v0

    .line 1266
    .local v0, "l":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 1267
    :cond_0
    const/4 v1, 0x0

    .line 1269
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method

.method public getTagIntValues(I)[I
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1352
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1353
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValues(II)[I
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1341
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1342
    .local v0, "t":Lcom/android/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1343
    const/4 v1, 0x0

    .line 1345
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAsInts()[I

    move-result-object v1

    goto :goto_0
.end method

.method public getTagLongValue(I)Ljava/lang/Long;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1257
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1258
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagLongValue(II)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValue(II)Ljava/lang/Long;
    .locals 4
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1246
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object v0

    .line 1247
    .local v0, "l":[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 1248
    :cond_0
    const/4 v1, 0x0

    .line 1250
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Long;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0
.end method

.method public getTagLongValues(I)[J
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1333
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1334
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValues(II)[J
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1322
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1323
    .local v0, "t":Lcom/android/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1324
    const/4 v1, 0x0

    .line 1326
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v1

    goto :goto_0
.end method

.method public getTagRationalValue(I)Lcom/android/gallery3d/exif/Rational;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1314
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1315
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagRationalValue(II)Lcom/android/gallery3d/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValue(II)Lcom/android/gallery3d/exif/Rational;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1303
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTagRationalValues(II)[Lcom/android/gallery3d/exif/Rational;

    move-result-object v0

    .line 1304
    .local v0, "l":[Lcom/android/gallery3d/exif/Rational;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 1305
    :cond_0
    const/4 v1, 0x0

    .line 1307
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/android/gallery3d/exif/Rational;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lcom/android/gallery3d/exif/Rational;-><init>(Lcom/android/gallery3d/exif/Rational;)V

    goto :goto_0
.end method

.method public getTagRationalValues(I)[Lcom/android/gallery3d/exif/Rational;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1390
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1391
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagRationalValues(II)[Lcom/android/gallery3d/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValues(II)[Lcom/android/gallery3d/exif/Rational;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1379
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1380
    .local v0, "t":Lcom/android/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1381
    const/4 v1, 0x0

    .line 1383
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAsRationals()[Lcom/android/gallery3d/exif/Rational;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1238
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1239
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTagStringValue(II)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1227
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1228
    .local v0, "t":Lcom/android/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1229
    const/4 v1, 0x0

    .line 1231
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1214
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1215
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagValue(II)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getTagValue(II)Ljava/lang/Object;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1201
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1202
    .local v0, "t":Lcom/android/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagsForIfdId(I)Ljava/util/List;
    .locals 1
    .param p1, "ifdId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/ExifData;->getAllTagsForIfd(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagsForTagId(S)Ljava/util/List;
    .locals 1
    .param p1, "tagId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/ExifData;->getAllTagsForTagId(S)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1755
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1756
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    .line 1757
    .local v0, "thumb":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1761
    .end local v0    # "thumb":[B
    :goto_0
    return-object v1

    .line 1758
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    .line 1761
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    .line 1777
    :goto_0
    return-object v0

    .line 1774
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    .line 1777
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->getUserComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public isTagCountDefined(I)Z
    .locals 3
    .param p1, "tagId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1401
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1403
    .local v0, "info":I
    if-nez v0, :cond_1

    .line 1406
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isThumbnailCompressed()Z
    .locals 1

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    if-nez p1, :cond_0

    .line 737
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 739
    :cond_0
    const/4 v0, 0x0

    .line 741
    .local v0, "d":Lcom/android/gallery3d/exif/ExifData;
    :try_start_0
    new-instance v2, Lcom/android/gallery3d/exif/ExifReader;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/exif/ExifReader;-><init>(Lcom/android/gallery3d/exif/ExifInterface;)V

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/android/gallery3d/exif/ExifData;
    :try_end_0
    .catch Lcom/android/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 745
    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    .line 746
    return-void

    .line 742
    :catch_0
    move-exception v1

    .line 743
    .local v1, "e":Lcom/android/gallery3d/exif/ExifInvalidFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid exif format : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readExif(Ljava/lang/String;)V
    .locals 5
    .param p1, "inFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    if-nez p1, :cond_0

    .line 758
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 760
    :cond_0
    const/4 v1, 0x0

    .line 762
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 768
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 769
    return-void

    .line 764
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 766
    throw v0

    .line 764
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public readExif([B)V
    .locals 1
    .param p1, "jpeg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 726
    return-void
.end method

.method public removeCompressedThumbnail()V
    .locals 2

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    .line 1843
    return-void
.end method

.method public removeTagDefinition(I)V
    .locals 1
    .param p1, "tagId"    # I

    .prologue
    .line 1739
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1740
    return-void
.end method

.method public resetTagDefinitions()V
    .locals 1

    .prologue
    .line 1746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 1747
    return-void
.end method

.method public rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 19
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1012
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/gallery3d/exif/ExifTag;>;"
    const/4 v10, 0x0

    .line 1013
    .local v10, "file":Ljava/io/RandomAccessFile;
    const/4 v14, 0x0

    .line 1016
    .local v14, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1017
    .local v18, "temp":Ljava/io/File;
    new-instance v15, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    .end local v14    # "is":Ljava/io/InputStream;
    .local v15, "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 1022
    .local v16, "parser":Lcom/android/gallery3d/exif/ExifParser;
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/android/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/android/gallery3d/exif/ExifInterface;)Lcom/android/gallery3d/exif/ExifParser;
    :try_end_1
    .catch Lcom/android/gallery3d/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v16

    .line 1026
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/exif/ExifParser;->getOffsetToExifEndFromSOF()I

    move-result v2

    int-to-long v6, v2

    .line 1029
    .local v6, "exifSize":J
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1030
    const/4 v14, 0x0

    .line 1033
    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    :try_start_3
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1034
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .local v11, "file":Ljava/io/RandomAccessFile;
    :try_start_4
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    .line 1035
    .local v12, "fileLength":J
    cmp-long v2, v12, v6

    if-gez v2, :cond_0

    .line 1036
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Filesize changed during operation"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1045
    .end local v12    # "fileLength":J
    :catch_0
    move-exception v9

    move-object v10, v11

    .line 1046
    .end local v6    # "exifSize":J
    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .end local v16    # "parser":Lcom/android/gallery3d/exif/ExifParser;
    .end local v18    # "temp":Ljava/io/File;
    .local v9, "e":Ljava/io/IOException;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :goto_0
    :try_start_5
    invoke-static {v10}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1047
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1048
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 1049
    :goto_1
    invoke-static {v14}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1050
    throw v2

    .line 1023
    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v16    # "parser":Lcom/android/gallery3d/exif/ExifParser;
    .restart local v18    # "temp":Ljava/io/File;
    :catch_1
    move-exception v9

    .line 1024
    .local v9, "e":Lcom/android/gallery3d/exif/ExifInvalidFormatException;
    :try_start_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid exif format : "

    invoke-direct {v2, v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1045
    .end local v9    # "e":Lcom/android/gallery3d/exif/ExifInvalidFormatException;
    :catch_2
    move-exception v9

    move-object v14, v15

    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 1040
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v6    # "exifSize":J
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v12    # "fileLength":J
    :cond_0
    :try_start_7
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    .line 1044
    .local v8, "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/android/gallery3d/exif/ExifInterface;->rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v17

    .line 1049
    .local v17, "ret":Z
    invoke-static {v14}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1051
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 1052
    return v17

    .line 1048
    .end local v6    # "exifSize":J
    .end local v8    # "buf":Ljava/nio/ByteBuffer;
    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .end local v12    # "fileLength":J
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v17    # "ret":Z
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v15    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object v14, v15

    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    goto :goto_1

    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v6    # "exifSize":J
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v2

    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 1045
    .end local v6    # "exifSize":J
    .end local v16    # "parser":Lcom/android/gallery3d/exif/ExifParser;
    .end local v18    # "temp":Ljava/io/File;
    :catch_3
    move-exception v9

    goto :goto_0
.end method

.method public rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    .locals 7
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1069
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/gallery3d/exif/ExifTag;>;"
    const/4 v1, 0x0

    .line 1071
    .local v1, "mod":Lcom/android/gallery3d/exif/ExifModifier;
    :try_start_0
    new-instance v2, Lcom/android/gallery3d/exif/ExifModifier;

    invoke-direct {v2, p1, p0}, Lcom/android/gallery3d/exif/ExifModifier;-><init>(Ljava/nio/ByteBuffer;Lcom/android/gallery3d/exif/ExifInterface;)V
    :try_end_0
    .catch Lcom/android/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1072
    .end local v1    # "mod":Lcom/android/gallery3d/exif/ExifModifier;
    .local v2, "mod":Lcom/android/gallery3d/exif/ExifModifier;
    :try_start_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1075
    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifModifier;->commit()Z

    move-result v4

    return v4

    .line 1072
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/exif/ExifTag;

    .line 1073
    .local v3, "t":Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/exif/ExifModifier;->modifyTag(Lcom/android/gallery3d/exif/ExifTag;)V
    :try_end_1
    .catch Lcom/android/gallery3d/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1076
    .end local v3    # "t":Lcom/android/gallery3d/exif/ExifTag;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1077
    .end local v2    # "mod":Lcom/android/gallery3d/exif/ExifModifier;
    .local v0, "e":Lcom/android/gallery3d/exif/ExifInvalidFormatException;
    .restart local v1    # "mod":Lcom/android/gallery3d/exif/ExifModifier;
    :goto_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid exif format : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1076
    .end local v0    # "e":Lcom/android/gallery3d/exif/ExifInvalidFormatException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setCompressedThumbnail(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1831
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1832
    .local v0, "thumbnail":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1833
    const/4 v1, 0x0

    .line 1835
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->setCompressedThumbnail([B)Z

    move-result v1

    goto :goto_0
.end method

.method public setCompressedThumbnail([B)Z
    .locals 1
    .param p1, "thumb"    # [B

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->clearThumbnailAndStrips()V

    .line 1819
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    .line 1820
    const/4 v0, 0x1

    return v0
.end method

.method public setExif(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 778
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/gallery3d/exif/ExifTag;>;"
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->clearExif()V

    .line 779
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    .line 780
    return-void
.end method

.method public setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;
    .locals 1
    .param p1, "tag"    # Lcom/android/gallery3d/exif/ExifTag;

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/ExifData;->addTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    return-object v0
.end method

.method public setTagDefinition(SISS[I)I
    .locals 13
    .param p1, "tagId"    # S
    .param p2, "defaultIfd"    # I
    .param p3, "tagType"    # S
    .param p4, "defaultComponentCount"    # S
    .param p5, "allowedIfds"    # [I

    .prologue
    .line 1635
    sget-object v10, Lcom/android/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1636
    const/4 v8, -0x1

    .line 1673
    :goto_0
    return v8

    .line 1638
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/gallery3d/exif/ExifTag;->isValidType(S)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {p2}, Lcom/android/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1639
    invoke-static {p2, p1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    .line 1640
    .local v8, "tagDef":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_1

    .line 1641
    const/4 v8, -0x1

    goto :goto_0

    .line 1643
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v7

    .line 1644
    .local v7, "otherDefs":[I
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 1646
    .local v6, "infos":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .line 1647
    .local v3, "defaultCheck":Z
    move-object/from16 v0, p5

    array-length v11, v0

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v11, :cond_2

    .line 1655
    if-nez v3, :cond_5

    .line 1656
    const/4 v8, -0x1

    goto :goto_0

    .line 1647
    :cond_2
    aget v4, p5, v10

    .line 1648
    .local v4, "i":I
    if-ne p2, v4, :cond_3

    .line 1649
    const/4 v3, 0x1

    .line 1651
    :cond_3
    invoke-static {v4}, Lcom/android/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1652
    const/4 v8, -0x1

    goto :goto_0

    .line 1647
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1659
    .end local v4    # "i":I
    :cond_5
    invoke-static/range {p5 .. p5}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v5

    .line 1661
    .local v5, "ifdFlags":I
    if-eqz v7, :cond_6

    .line 1662
    array-length v11, v7

    const/4 v10, 0x0

    :goto_2
    if-lt v10, v11, :cond_7

    .line 1670
    :cond_6
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v10

    shl-int/lit8 v11, v5, 0x18

    shl-int/lit8 v12, p3, 0x10

    or-int/2addr v11, v12

    or-int v11, v11, p4

    invoke-virtual {v10, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1662
    :cond_7
    aget v2, v7, v10

    .line 1663
    .local v2, "def":I
    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    .line 1664
    .local v9, "tagInfo":I
    invoke-static {v9}, Lcom/android/gallery3d/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    .line 1665
    .local v1, "allowedFlags":I
    and-int v12, v5, v1

    if-eqz v12, :cond_8

    .line 1666
    const/4 v8, -0x1

    goto :goto_0

    .line 1662
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1673
    .end local v1    # "allowedFlags":I
    .end local v2    # "def":I
    .end local v3    # "defaultCheck":Z
    .end local v5    # "ifdFlags":I
    .end local v6    # "infos":Landroid/util/SparseIntArray;
    .end local v7    # "otherDefs":[I
    .end local v8    # "tagDef":I
    .end local v9    # "tagInfo":I
    :cond_9
    const/4 v8, -0x1

    goto :goto_0
.end method

.method public setTagValue(IILjava/lang/Object;)Z
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    .line 1552
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1553
    .local v0, "t":Lcom/android/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1554
    const/4 v1, 0x0

    .line 1556
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/gallery3d/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public setTagValue(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 1569
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1570
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->setTagValue(IILjava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1594
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/gallery3d/exif/ExifTag;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1597
    return-void

    .line 1594
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/exif/ExifTag;

    .line 1595
    .local v0, "t":Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    goto :goto_0
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "bmap"    # Landroid/graphics/Bitmap;
    .param p2, "exifOutStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 818
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 820
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 821
    .local v0, "s":Ljava/io/OutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 822
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 823
    return-void
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .param p1, "bmap"    # Landroid/graphics/Bitmap;
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 883
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 885
    :cond_1
    const/4 v1, 0x0

    .line 887
    .local v1, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 888
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 889
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 895
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 892
    throw v0
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "jpegStream"    # Ljava/io/InputStream;
    .param p2, "exifOutStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 836
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 838
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 839
    .local v0, "s":Ljava/io/OutputStream;
    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 840
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 841
    return-void
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .param p1, "jpegStream"    # Ljava/io/InputStream;
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 909
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 910
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 912
    :cond_1
    const/4 v1, 0x0

    .line 914
    .local v1, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 915
    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 916
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 922
    return-void

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 919
    throw v0
.end method

.method public writeExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "jpegFileName"    # Ljava/lang/String;
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 936
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 937
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 939
    :cond_1
    const/4 v1, 0x0

    .line 941
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v2, p2}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 947
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 948
    return-void

    .line 943
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 944
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 945
    throw v0

    .line 943
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public writeExif([BLjava/io/OutputStream;)V
    .locals 3
    .param p1, "jpeg"    # [B
    .param p2, "exifOutStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 799
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 800
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 802
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 803
    .local v0, "s":Ljava/io/OutputStream;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 804
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 805
    return-void
.end method

.method public writeExif([BLjava/lang/String;)V
    .locals 4
    .param p1, "jpeg"    # [B
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 856
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 858
    :cond_1
    const/4 v1, 0x0

    .line 860
    .local v1, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 861
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 862
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 868
    return-void

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 865
    throw v0
.end method
