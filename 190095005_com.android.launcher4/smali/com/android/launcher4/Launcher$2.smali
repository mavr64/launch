.class Lcom/android/launcher4/Launcher$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$2;->this$0:Lcom/android/launcher4/Launcher;

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 796
    sget-object v0, Lcom/android/launcher4/Launcher;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/syu/widget/music/TimeUpdateReceiver;->register(Landroid/content/Context;)V

    .line 797
    iget-object v0, p0, Lcom/android/launcher4/Launcher$2;->this$0:Lcom/android/launcher4/Launcher;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.syu.show_time"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 798
    return-void
.end method
