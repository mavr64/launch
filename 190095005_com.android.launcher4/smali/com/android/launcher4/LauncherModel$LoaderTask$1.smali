.class Lcom/android/launcher4/LauncherModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel$LoaderTask;->waitForIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel$LoaderTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    .line 1563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1565
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    monitor-enter v1

    .line 1566
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/launcher4/LauncherModel$LoaderTask;->access$0(Lcom/android/launcher4/LauncherModel$LoaderTask;Z)V

    .line 1570
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1565
    monitor-exit v1

    .line 1572
    return-void

    .line 1565
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
