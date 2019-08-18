.class public Lcom/syu/jni/ControlNative;
.super Ljava/lang/Object;
.source "ControlNative.java"


# static fields
.field public static INSTANCE:Lcom/syu/jni/ControlNative;

.field public static bLoadLibOk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    const/4 v1, 0x1

    sput-boolean v1, Lcom/syu/jni/ControlNative;->bLoadLibOk:Z

    .line 9
    :try_start_0
    const-string v1, "sqlcontrol"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Lcom/syu/jni/ControlNative;

    invoke-direct {v1}, Lcom/syu/jni/ControlNative;-><init>()V

    sput-object v1, Lcom/syu/jni/ControlNative;->INSTANCE:Lcom/syu/jni/ControlNative;

    return-void

    .line 10
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 11
    .restart local v0    # "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/syu/jni/ControlNative;->bLoadLibOk:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native fytSetLedColor(I)I
.end method

.method public native fyt_Clone_Screen_Ratio(III)I
.end method

.method public native fyt_Get_Clone_Ratio([I)I
.end method

.method public native fyt_Save_Clone_Ratio([I)I
.end method

.method public native fyt_audio_status()I
.end method

.method public native fyt_backcar_get_settings([C)I
.end method

.method public native fyt_backcar_setdefault()I
.end method

.method public native fyt_backcar_settings(CCCC)I
.end method

.method public native fyt_backtype_get()I
.end method

.method public native fyt_backtype_set(I)I
.end method

.method public native fyt_car_image_get_on()I
.end method

.method public native fyt_car_image_set_on(I)I
.end method

.method public native fyt_encryption_result()I
.end method

.method public native fyt_get8288_NP()I
.end method

.method public native fyt_get8288_signal()I
.end method

.method public native fyt_get_ui_time()[B
.end method

.method public native fyt_gpio_read(I)I
.end method

.method public native fyt_gpio_setup(III)I
.end method

.method public native fyt_gpio_write(II)I
.end method

.method public native fyt_gps_sound_status_listen()I
.end method

.method public native fyt_lightoff_timeout_listen()I
.end method

.method public native fyt_lightoff_timeout_set(I)I
.end method

.method public native fyt_logo_write([BI)I
.end method

.method public native fyt_multicolour_light_read()C
.end method

.method public native fyt_multicolour_light_set(C)I
.end method

.method public native fyt_sound_control(C)I
.end method

.method public native fyt_sound_spectrogram_close(I)I
.end method

.method public native fyt_sound_spectrogram_open()I
.end method

.method public native fyt_sound_spectrogram_read(I)I
.end method

.method public native fyt_sound_spectrogram_write(II)I
.end method

.method public native fyt_update_clear()I
.end method

.method public native fyt_update_get()I
.end method

.method public native fyt_usb_speed_get()I
.end method

.method public native fyt_usb_speed_set(I)C
.end method
