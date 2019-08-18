.class public Lcom/android/launcher4/ChangedAuxReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChangedAuxReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    sget-object v0, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Lcom/android/launcher4/Launcher;->mModel:Lcom/android/launcher4/LauncherModel;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher4/LauncherModel;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 19
    :cond_0
    return-void
.end method
