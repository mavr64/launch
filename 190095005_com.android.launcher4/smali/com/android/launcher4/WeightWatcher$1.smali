.class Lcom/android/launcher4/WeightWatcher$1;
.super Landroid/os/Handler;
.source "WeightWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/WeightWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/WeightWatcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/WeightWatcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/WeightWatcher$1;->this$0:Lcom/android/launcher4/WeightWatcher;

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x3

    .line 59
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v4, p0, Lcom/android/launcher4/WeightWatcher$1;->this$0:Lcom/android/launcher4/WeightWatcher;

    iget-object v4, v4, Lcom/android/launcher4/WeightWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v4, p0, Lcom/android/launcher4/WeightWatcher$1;->this$0:Lcom/android/launcher4/WeightWatcher;

    iget-object v4, v4, Lcom/android/launcher4/WeightWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 67
    :pswitch_2
    iget-object v4, p0, Lcom/android/launcher4/WeightWatcher$1;->this$0:Lcom/android/launcher4/WeightWatcher;

    invoke-static {v4}, Lcom/android/launcher4/WeightWatcher;->access$0(Lcom/android/launcher4/WeightWatcher;)Lcom/android/launcher4/MemoryTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher4/MemoryTracker;->getTrackedProcesses()[I

    move-result-object v2

    .line 69
    .local v2, "pids":[I
    iget-object v4, p0, Lcom/android/launcher4/WeightWatcher$1;->this$0:Lcom/android/launcher4/WeightWatcher;

    invoke-virtual {v4}, Lcom/android/launcher4/WeightWatcher;->getChildCount()I

    move-result v0

    .line 70
    .local v0, "N":I
    array-length v4, v2

    if-eq v4, v0, :cond_1

    iget-object v4, p0, Lcom/android/launcher4/WeightWatcher$1;->this$0:Lcom/android/launcher4/WeightWatcher;

    invoke-virtual {v4}, Lcom/android/launcher4/WeightWatcher;->initViews()V

    .line 79
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/launcher4/WeightWatcher$1;->this$0:Lcom/android/launcher4/WeightWatcher;

    iget-object v4, v4, Lcom/android/launcher4/WeightWatcher;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 71
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 72
    iget-object v4, p0, Lcom/android/launcher4/WeightWatcher$1;->this$0:Lcom/android/launcher4/WeightWatcher;

    invoke-virtual {v4, v1}, Lcom/android/launcher4/WeightWatcher;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/WeightWatcher$ProcessWatcher;

    .line 73
    .local v3, "pw":Lcom/android/launcher4/WeightWatcher$ProcessWatcher;
    invoke-virtual {v3}, Lcom/android/launcher4/WeightWatcher$ProcessWatcher;->getPid()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/launcher4/WeightWatcher;->indexOf([II)I

    move-result v4

    if-gez v4, :cond_2

    .line 74
    iget-object v4, p0, Lcom/android/launcher4/WeightWatcher$1;->this$0:Lcom/android/launcher4/WeightWatcher;

    invoke-virtual {v4}, Lcom/android/launcher4/WeightWatcher;->initViews()V

    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher4/WeightWatcher$ProcessWatcher;->update()V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
