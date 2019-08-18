.class Lcom/android/launcher4/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/syu/car/CustomFilter$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel;-><init>(Lcom/android/launcher4/LauncherAppState;Lcom/android/launcher4/IconCache;Lcom/android/launcher4/AppFilter;)V
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
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$3;->this$0:Lcom/android/launcher4/LauncherModel;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$3;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher4/LauncherModel;->access$9(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/LauncherModel$LoaderTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$3;->this$0:Lcom/android/launcher4/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher4/LauncherModel;->access$9(Lcom/android/launcher4/LauncherModel;)Lcom/android/launcher4/LauncherModel$LoaderTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    invoke-static {}, Lcom/android/launcher4/LauncherModel;->access$24()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 258
    invoke-static {}, Lcom/android/launcher4/LauncherModel;->access$24()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$3;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher4/LauncherModel;->reload:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    invoke-static {}, Lcom/android/launcher4/LauncherModel;->access$24()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$3;->this$0:Lcom/android/launcher4/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher4/LauncherModel;->reload:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    :cond_1
    return-void
.end method
