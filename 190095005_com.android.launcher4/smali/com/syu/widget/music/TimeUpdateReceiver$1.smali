.class Lcom/syu/widget/music/TimeUpdateReceiver$1;
.super Ljava/lang/Object;
.source "TimeUpdateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/widget/music/TimeUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/widget/music/TimeUpdateReceiver;


# direct methods
.method constructor <init>(Lcom/syu/widget/music/TimeUpdateReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/widget/music/TimeUpdateReceiver$1;->this$0:Lcom/syu/widget/music/TimeUpdateReceiver;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    new-instance v1, Lcom/syu/widget/music/TimeUpdateReceiver$1$1;

    invoke-direct {v1, p0}, Lcom/syu/widget/music/TimeUpdateReceiver$1$1;-><init>(Lcom/syu/widget/music/TimeUpdateReceiver$1;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 66
    :cond_0
    return-void
.end method
