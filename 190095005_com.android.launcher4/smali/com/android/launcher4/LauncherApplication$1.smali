.class Lcom/android/launcher4/LauncherApplication$1;
.super Ljava/lang/Object;
.source "LauncherApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherApplication$1;->this$0:Lcom/android/launcher4/LauncherApplication;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 110
    sget v0, Lcom/android/launcher4/MyAutoMapReceiver;->mCurSpeed:I

    if-lez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/launcher4/LauncherApplication$1;->this$0:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-static {v0}, Lcom/syu/widget/music/Widget;->update(Landroid/content/Context;)V

    .line 121
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    return-void

    .line 115
    :cond_1
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->updateLoadAnima()V

    goto :goto_0
.end method
