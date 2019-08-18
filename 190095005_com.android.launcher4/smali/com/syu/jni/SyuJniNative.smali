.class public Lcom/syu/jni/SyuJniNative;
.super Ljava/lang/Object;
.source "SyuJniNative.java"


# static fields
.field private static final INSTANCE:Lcom/syu/jni/SyuJniNative;

.field public static final JNI_EXE_CMD_0_TEST:I = 0x0

.field public static final JNI_EXE_CMD_104_WRITE_GAMMA:I = 0x68

.field public static final JNI_EXE_CMD_105_SET_BL_ADJ:I = 0x69

.field public static final JNI_EXE_CMD_106_SET_BL_LIMIT:I = 0x6a

.field public static final JNI_EXE_CMD_107_GET_BL_PARAM:I = 0x6b

.field public static final JNI_EXE_CMD_109_GET_BL_DUTY:I = 0x6d

.field public static final JNI_EXE_CMD_10_LITTLE_HOM:I = 0xa

.field public static final JNI_EXE_CMD_110_SET_BL_DUTY:I = 0x6e

.field public static final JNI_EXE_CMD_112_IS_AREAACTIVED:I = 0x70

.field public static final JNI_EXE_CMD_113_ACTIVE_AREA:I = 0x71

.field public static final JNI_EXE_CMD_114_GET_ACTIVEKEY:I = 0x72

.field public static final JNI_EXE_CMD_11_VIDEO_NTSC_PAL:I = 0xb

.field public static final JNI_EXE_CMD_12_GET_USB_SPEED:I = 0xc

.field public static final JNI_EXE_CMD_13_SET_USB_SPEED:I = 0xd

.field public static final JNI_EXE_CMD_14_SET_BACKCAR_TYPE:I = 0xe

.field public static final JNI_EXE_CMD_15_GET_BACKCAR_TYPE:I = 0xf

.field public static final JNI_EXE_CMD_161_GET_SMITYPE:I = 0xa1

.field public static final JNI_EXE_CMD_162_SET_SMITYPE:I = 0xa2

.field public static final JNI_EXE_CMD_16_SET_LED_COLORS:I = 0x10

.field public static final JNI_EXE_CMD_17_GET_LED_COLORS:I = 0x11

.field public static final JNI_EXE_CMD_1_BACKCAR_MIRROR:I = 0x1

.field public static final JNI_EXE_CMD_27_SET_BL_PARAM:I = 0x1b

.field public static final JNI_EXE_CMD_28_GET_BL_PARAM:I = 0x1c

.field public static final JNI_EXE_CMD_2_SOUND_MIX:I = 0x2

.field public static final JNI_EXE_CMD_3_ENCARPTION_RESULT:I = 0x3

.field public static final JNI_EXE_CMD_4_AUDIO_STATE:I = 0x4

.field public static final JNI_EXE_CMD_5_TURNOFF_LCDC:I = 0x5

.field public static final JNI_EXE_CMD_6_MUTE_AMP:I = 0x6

.field public static final JNI_EXE_CMD_7_AMP_MUTE_STATE:I = 0x7

.field public static final JNI_EXE_CMD_8_RESET_GPS:I = 0x8

.field public static final JNI_EXE_CMD_9_POWERON_SCREEN:I = 0x9

.field public static bLoadLibOk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5
    new-instance v1, Lcom/syu/jni/SyuJniNative;

    invoke-direct {v1}, Lcom/syu/jni/SyuJniNative;-><init>()V

    sput-object v1, Lcom/syu/jni/SyuJniNative;->INSTANCE:Lcom/syu/jni/SyuJniNative;

    .line 7
    const/4 v1, 0x1

    sput-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    .line 10
    :try_start_0
    const-string v1, "syu_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 11
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 12
    .restart local v0    # "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOk:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/syu/jni/SyuJniNative;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/syu/jni/SyuJniNative;->INSTANCE:Lcom/syu/jni/SyuJniNative;

    return-object v0
.end method


# virtual methods
.method public native syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I
.end method
