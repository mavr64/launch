.class public Lcom/android/launcher4/PreloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PreloadReceiver.java"


# static fields
.field public static final EXTRA_WORKSPACE_NAME:Ljava/lang/String; = "com.android.launcher4.action.EXTRA_WORKSPACE_NAME"

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "Launcher.PreloadReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getLauncherProvider()Lcom/android/launcher4/LauncherProvider;

    move-result-object v1

    .line 35
    .local v1, "provider":Lcom/android/launcher4/LauncherProvider;
    if-eqz v1, :cond_0

    .line 36
    const-string v3, "com.android.launcher4.action.EXTRA_WORKSPACE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "xml"

    const-string v5, "com.android.launcher4"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 42
    .local v2, "workspaceResId":I
    :goto_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/launcher4/PreloadReceiver$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/launcher4/PreloadReceiver$1;-><init>(Lcom/android/launcher4/PreloadReceiver;Lcom/android/launcher4/LauncherProvider;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 47
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 49
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "workspaceResId":I
    :cond_0
    return-void

    .line 38
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
