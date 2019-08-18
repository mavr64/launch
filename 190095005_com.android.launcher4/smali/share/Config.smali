.class public Lshare/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final ALLAPP:Ljava/lang/String; = "ALLAPP"

.field public static final BRIGHT:Ljava/lang/String; = "BRIGHT"

.field public static final BT:Ljava/lang/String; = "Bluetooth"

.field public static final BTAV:Ljava/lang/String; = "Btav"

.field public static CHIP_UIID:I = 0x0

.field public static final CLOLSESCREEN:Ljava/lang/String; = "CLOLSESCREEN"

.field public static final CLOLSESOUND:Ljava/lang/String; = "CloseSound"

.field public static CUSTOMER_ID:I = 0x0

.field public static final DVR:Ljava/lang/String; = "Dvr"

.field public static final ECAR:Ljava/lang/String; = "ECAR"

.field public static final EQ:Ljava/lang/String; = "Eq"

.field public static EXISTAMPAUTO:Z = false

.field public static EXISTVOICE:Z = false

.field public static final HONGFANS:Ljava/lang/String; = "HONGFANS"

.field public static final KLFM:Ljava/lang/String; = "Klfm"

.field public static final KUWO:Ljava/lang/String; = "Kuwo"

.field public static final LIGHT:Ljava/lang/String; = "Light"

.field public static final MUSIC:Ljava/lang/String; = "Music"

.field public static final NAVI:Ljava/lang/String; = "Navi"

.field public static PLATFORM_ID:I = 0x0

.field public static final RADIO:Ljava/lang/String; = "Radio"

.field public static final SETTING:Ljava/lang/String; = "Setting"

.field public static final SOUND:Ljava/lang/String; = "Sound"

.field public static final TIME:Ljava/lang/String; = "Time"

.field public static final UNICAR:Ljava/lang/String; = "UNICAR"

.field public static USER_UIID:I = 0x0

.field public static final VIDEO:Ljava/lang/String; = "Video"

.field public static final VOICE:Ljava/lang/String; = "Voice"

.field public static final WIFI:Ljava/lang/String; = "Wifi"

.field public static final WS_Allapps:Ljava/lang/String; = "WS_Allapps"

.field public static final WS_Aux:Ljava/lang/String; = "WS_Aux"

.field public static final WS_BRIGHT:Ljava/lang/String; = "WS_BRIGHT"

.field public static final WS_Bt:Ljava/lang/String; = "WS_Bt"

.field public static final WS_Car:Ljava/lang/String; = "WS_Car"

.field public static final WS_Chrome:Ljava/lang/String; = "WS_Chrome"

.field public static final WS_Custom:Ljava/lang/String; = "WS_Custom"

.field public static final WS_Dvd:Ljava/lang/String; = "WS_Dvd"

.field public static final WS_Dvr:Ljava/lang/String; = "WS_Dvr"

.field public static final WS_Dvr_Catch:Ljava/lang/String; = "WS_Dvr_Catch"

.field public static final WS_Dvr_Lock:Ljava/lang/String; = "WS_Dvr_Lock"

.field public static final WS_Dvr_Rec:Ljava/lang/String; = "WS_Dvr_Rec"

.field public static final WS_Easyconn:Ljava/lang/String; = "WS_Easyconn"

.field public static final WS_File:Ljava/lang/String; = "WS_File"

.field public static final WS_Gallery:Ljava/lang/String; = "WS_Gallery"

.field public static final WS_Gaode:Ljava/lang/String; = "WS_Gaode"

.field public static final WS_KLFM:Ljava/lang/String; = "WS_Klfm"

.field public static final WS_Kuwo:Ljava/lang/String; = "WS_Kuwo"

.field public static final WS_Media:Ljava/lang/String; = "WS_Media"

.field public static final WS_Miudrive:Ljava/lang/String; = "WS_Miudrive"

.field public static final WS_Music:Ljava/lang/String; = "WS_Music"

.field public static final WS_MusicIV:Ljava/lang/String; = "WS_MusicIV"

.field public static final WS_Music_Two:Ljava/lang/String; = "WS_Music_Two"

.field public static final WS_Navi:Ljava/lang/String; = "WS_Navi"

.field public static final WS_Radio:Ljava/lang/String; = "WS_Radio"

.field public static final WS_Recharge:Ljava/lang/String; = "WS_Recharge"

.field public static final WS_Settings:Ljava/lang/String; = "WS_Settings"

.field public static final WS_Steer:Ljava/lang/String; = "WS_Steer"

.field public static final WS_Time:Ljava/lang/String; = "WS_Time"

.field public static final WS_Time_Two:Ljava/lang/String; = "WS_Time_Two"

.field public static final WS_Tire:Ljava/lang/String; = "WS_Tire"

.field public static final WS_Veding:Ljava/lang/String; = "WS_Veding"

.field public static final WS_Video:Ljava/lang/String; = "WS_Video"

.field public static final WS_Voice:Ljava/lang/String; = "WS_Voice"

.field public static final WS_Widget1:Ljava/lang/String; = "WS_Widget1"

.field public static final WS_Widget2:Ljava/lang/String; = "WS_Widget2"

.field public static final WS_YouTuBe:Ljava/lang/String; = "WS_YouTuBe"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lshare/Config;->EXISTAMPAUTO:Z

    .line 16
    sput-boolean v0, Lshare/Config;->EXISTVOICE:Z

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
