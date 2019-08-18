.class public Lcom/syu/logo/CarLogoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarLogoReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.launcher.carlogo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    new-instance v0, Lcom/syu/logo/CarLogoDialogFragment;

    invoke-direct {v0}, Lcom/syu/logo/CarLogoDialogFragment;-><init>()V

    sget-object v1, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CarLogoDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/syu/logo/CarLogoDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 20
    return-void
.end method
