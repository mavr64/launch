.class Lcom/android/launcher4/Launcher$LocaleConfiguration;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleConfiguration"
.end annotation


# instance fields
.field public locale:Ljava/lang/String;

.field public mcc:I

.field public mnc:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    iput v0, p0, Lcom/android/launcher4/Launcher$LocaleConfiguration;->mcc:I

    .line 1078
    iput v0, p0, Lcom/android/launcher4/Launcher$LocaleConfiguration;->mnc:I

    .line 1075
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher4/Launcher$LocaleConfiguration;)V
    .locals 0

    .prologue
    .line 1075
    invoke-direct {p0}, Lcom/android/launcher4/Launcher$LocaleConfiguration;-><init>()V

    return-void
.end method
