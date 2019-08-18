.class Lcom/android/launcher4/Launcher$5$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/Launcher$5;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$5$1;->this$1:Lcom/android/launcher4/Launcher$5;

    .line 1795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 1800
    sget-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_MUSIC:Lcom/fyt/car/DataNotifier;

    const/4 v1, 0x0

    new-array v2, v8, [J

    .line 1801
    new-array v3, v8, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1802
    sget-object v6, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1803
    const v7, 0x7f0c0083

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 1804
    sget-object v6, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1805
    const v7, 0x7f0c0084

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1806
    sget-object v5, Lcom/fyt/car/MusicService;->state:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1807
    sget-object v5, Lcom/fyt/car/MusicService;->album_cover:[B

    .line 1800
    invoke-virtual/range {v0 .. v5}, Lcom/fyt/car/DataNotifier;->set([I[J[F[Ljava/lang/String;[B)V

    .line 1808
    return-void

    .line 1801
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
