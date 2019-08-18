.class Lcom/android/launcher4/WeightWatcher$2;
.super Ljava/lang/Object;
.source "WeightWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/WeightWatcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    iput-object p1, p0, Lcom/android/launcher4/WeightWatcher$2;->this$0:Lcom/android/launcher4/WeightWatcher;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/launcher4/WeightWatcher$2;->this$0:Lcom/android/launcher4/WeightWatcher;

    check-cast p2, Lcom/android/launcher4/MemoryTracker$MemoryTrackerInterface;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/launcher4/MemoryTracker$MemoryTrackerInterface;->getService()Lcom/android/launcher4/MemoryTracker;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher4/WeightWatcher;->access$1(Lcom/android/launcher4/WeightWatcher;Lcom/android/launcher4/MemoryTracker;)V

    .line 92
    iget-object v0, p0, Lcom/android/launcher4/WeightWatcher$2;->this$0:Lcom/android/launcher4/WeightWatcher;

    invoke-virtual {v0}, Lcom/android/launcher4/WeightWatcher;->initViews()V

    .line 93
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/launcher4/WeightWatcher$2;->this$0:Lcom/android/launcher4/WeightWatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher4/WeightWatcher;->access$1(Lcom/android/launcher4/WeightWatcher;Lcom/android/launcher4/MemoryTracker;)V

    .line 97
    return-void
.end method
