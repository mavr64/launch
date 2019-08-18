.class Lcom/android/launcher4/LauncherModel$9;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel;->flushWorkerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$9;->this$0:Lcom/android/launcher4/LauncherModel;

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 742
    monitor-enter p0

    .line 743
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 744
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$9;->this$0:Lcom/android/launcher4/LauncherModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher4/LauncherModel;->access$26(Lcom/android/launcher4/LauncherModel;Z)V

    .line 742
    monitor-exit p0

    .line 746
    return-void

    .line 742
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
