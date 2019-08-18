.class public Lcom/fyt/car/LauncherNotify;
.super Ljava/lang/Object;
.source "LauncherNotify.java"


# static fields
.field public static final NOTIFIER_BTAV:Lcom/fyt/car/DataNotifier;

.field public static final NOTIFIER_DVR:Lcom/fyt/car/DataNotifier;

.field public static final NOTIFIER_MUSIC:Lcom/fyt/car/DataNotifier;

.field public static final NOTIFIER_NAVISTATE:Lcom/fyt/car/DataNotifier;

.field public static final NOTIFIER_NAVIVIEW:Lcom/fyt/car/DataNotifier;

.field public static final NOTIFIER_VIDEO:Lcom/fyt/car/DataNotifier;

.field public static final NOTIFY_MAINSTATE:Lcom/fyt/car/DataNotifier;

.field public static final NOTIFY_RADIO_BAND:Lcom/fyt/car/DataNotifier;

.field public static final NOTIFY_RADIO_FREQ:Lcom/fyt/car/DataNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/fyt/car/DataNotifier;

    invoke-direct {v0}, Lcom/fyt/car/DataNotifier;-><init>()V

    sput-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_MUSIC:Lcom/fyt/car/DataNotifier;

    .line 5
    new-instance v0, Lcom/fyt/car/DataNotifier;

    invoke-direct {v0}, Lcom/fyt/car/DataNotifier;-><init>()V

    sput-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_VIDEO:Lcom/fyt/car/DataNotifier;

    .line 6
    new-instance v0, Lcom/fyt/car/DataNotifier;

    invoke-direct {v0}, Lcom/fyt/car/DataNotifier;-><init>()V

    sput-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFY_MAINSTATE:Lcom/fyt/car/DataNotifier;

    .line 7
    new-instance v0, Lcom/fyt/car/DataNotifier;

    invoke-direct {v0}, Lcom/fyt/car/DataNotifier;-><init>()V

    sput-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFY_RADIO_BAND:Lcom/fyt/car/DataNotifier;

    .line 8
    new-instance v0, Lcom/fyt/car/DataNotifier;

    invoke-direct {v0}, Lcom/fyt/car/DataNotifier;-><init>()V

    sput-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFY_RADIO_FREQ:Lcom/fyt/car/DataNotifier;

    .line 9
    new-instance v0, Lcom/fyt/car/DataNotifier;

    invoke-direct {v0}, Lcom/fyt/car/DataNotifier;-><init>()V

    sput-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_BTAV:Lcom/fyt/car/DataNotifier;

    .line 10
    new-instance v0, Lcom/fyt/car/DataNotifier;

    invoke-direct {v0}, Lcom/fyt/car/DataNotifier;-><init>()V

    sput-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_DVR:Lcom/fyt/car/DataNotifier;

    .line 11
    new-instance v0, Lcom/fyt/car/DataNotifier;

    invoke-direct {v0}, Lcom/fyt/car/DataNotifier;-><init>()V

    sput-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_NAVIVIEW:Lcom/fyt/car/DataNotifier;

    .line 12
    new-instance v0, Lcom/fyt/car/DataNotifier;

    invoke-direct {v0}, Lcom/fyt/car/DataNotifier;-><init>()V

    sput-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_NAVISTATE:Lcom/fyt/car/DataNotifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
