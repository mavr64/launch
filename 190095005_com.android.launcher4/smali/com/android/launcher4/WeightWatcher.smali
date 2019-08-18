.class public Lcom/android/launcher4/WeightWatcher;
.super Landroid/widget/LinearLayout;
.source "WeightWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/WeightWatcher$ProcessWatcher;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I = -0x40000000

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2

.field private static final MSG_UPDATE:I = 0x3

.field private static final RAM_GRAPH_PSS_COLOR:I = -0x663400

.field private static final RAM_GRAPH_RSS_COLOR:I = -0x670000

.field private static final TEXT_COLOR:I = -0x1

.field private static final UPDATE_RATE:I = 0x1388


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mMemoryService:Lcom/android/launcher4/MemoryTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/WeightWatcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v1, Lcom/android/launcher4/WeightWatcher$1;

    invoke-direct {v1, p0}, Lcom/android/launcher4/WeightWatcher$1;-><init>(Lcom/android/launcher4/WeightWatcher;)V

    iput-object v1, p0, Lcom/android/launcher4/WeightWatcher;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Lcom/android/launcher4/WeightWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/launcher4/WeightWatcher$2;-><init>(Lcom/android/launcher4/WeightWatcher;)V

    .line 99
    .local v0, "connection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/launcher4/MemoryTracker;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 102
    invoke-virtual {p0, v3}, Lcom/android/launcher4/WeightWatcher;->setOrientation(I)V

    .line 104
    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {p0, v1}, Lcom/android/launcher4/WeightWatcher;->setBackgroundColor(I)V

    .line 105
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/WeightWatcher;)Lcom/android/launcher4/MemoryTracker;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher4/WeightWatcher;->mMemoryService:Lcom/android/launcher4/MemoryTracker;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher4/WeightWatcher;Lcom/android/launcher4/MemoryTracker;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/launcher4/WeightWatcher;->mMemoryService:Lcom/android/launcher4/MemoryTracker;

    return-void
.end method

.method static indexOf([II)I
    .locals 2
    .param p0, "a"    # [I
    .param p1, "x"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 53
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 51
    .restart local v0    # "i":I
    :cond_1
    aget v1, p0, v0

    if-eq v1, p1, :cond_0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public initViews()V
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/launcher4/WeightWatcher;->removeAllViews()V

    .line 109
    iget-object v3, p0, Lcom/android/launcher4/WeightWatcher;->mMemoryService:Lcom/android/launcher4/MemoryTracker;

    invoke-virtual {v3}, Lcom/android/launcher4/MemoryTracker;->getTrackedProcesses()[I

    move-result-object v1

    .line 110
    .local v1, "processes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 115
    return-void

    .line 111
    :cond_0
    new-instance v2, Lcom/android/launcher4/WeightWatcher$ProcessWatcher;

    invoke-virtual {p0}, Lcom/android/launcher4/WeightWatcher;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/launcher4/WeightWatcher$ProcessWatcher;-><init>(Lcom/android/launcher4/WeightWatcher;Landroid/content/Context;)V

    .line 112
    .local v2, "v":Lcom/android/launcher4/WeightWatcher$ProcessWatcher;
    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/launcher4/WeightWatcher$ProcessWatcher;->setPid(I)V

    .line 113
    invoke-virtual {p0, v2}, Lcom/android/launcher4/WeightWatcher;->addView(Landroid/view/View;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 124
    iget-object v0, p0, Lcom/android/launcher4/WeightWatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 130
    iget-object v0, p0, Lcom/android/launcher4/WeightWatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 131
    return-void
.end method
