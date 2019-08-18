.class public Lcom/android/launcher4/SpringLoadedDragController;
.super Ljava/lang/Object;
.source "SpringLoadedDragController.java"

# interfaces
.implements Lcom/android/launcher4/OnAlarmListener;


# instance fields
.field final ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

.field final ENTER_SPRING_LOAD_HOVER_TIME:J

.field final EXIT_SPRING_LOAD_HOVER_TIME:J

.field mAlarm:Lcom/android/launcher4/Alarm;

.field private mLauncher:Lcom/android/launcher4/Launcher;

.field private mScreen:Lcom/android/launcher4/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/launcher4/SpringLoadedDragController;->ENTER_SPRING_LOAD_HOVER_TIME:J

    .line 22
    const-wide/16 v0, 0x3b6

    iput-wide v0, p0, Lcom/android/launcher4/SpringLoadedDragController;->ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

    .line 23
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/launcher4/SpringLoadedDragController;->EXIT_SPRING_LOAD_HOVER_TIME:J

    .line 32
    iput-object p1, p0, Lcom/android/launcher4/SpringLoadedDragController;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 33
    new-instance v0, Lcom/android/launcher4/Alarm;

    invoke-direct {v0}, Lcom/android/launcher4/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/SpringLoadedDragController;->mAlarm:Lcom/android/launcher4/Alarm;

    .line 34
    iget-object v0, p0, Lcom/android/launcher4/SpringLoadedDragController;->mAlarm:Lcom/android/launcher4/Alarm;

    invoke-virtual {v0, p0}, Lcom/android/launcher4/Alarm;->setOnAlarmListener(Lcom/android/launcher4/OnAlarmListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher4/SpringLoadedDragController;->mAlarm:Lcom/android/launcher4/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher4/Alarm;->cancelAlarm()V

    .line 39
    return-void
.end method

.method public onAlarm(Lcom/android/launcher4/Alarm;)V
    .locals 3
    .param p1, "alarm"    # Lcom/android/launcher4/Alarm;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/android/launcher4/SpringLoadedDragController;->mScreen:Lcom/android/launcher4/CellLayout;

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/android/launcher4/SpringLoadedDragController;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v1

    .line 54
    .local v1, "w":Lcom/android/launcher4/Workspace;
    iget-object v2, p0, Lcom/android/launcher4/SpringLoadedDragController;->mScreen:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 55
    .local v0, "page":I
    invoke-virtual {v1}, Lcom/android/launcher4/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 56
    invoke-virtual {v1, v0}, Lcom/android/launcher4/Workspace;->snapToPage(I)V

    .line 61
    .end local v0    # "page":I
    .end local v1    # "w":Lcom/android/launcher4/Workspace;
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/android/launcher4/SpringLoadedDragController;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getDragController()Lcom/android/launcher4/DragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/DragController;->cancelDrag()V

    goto :goto_0
.end method

.method public setAlarm(Lcom/android/launcher4/CellLayout;)V
    .locals 3
    .param p1, "cl"    # Lcom/android/launcher4/CellLayout;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher4/SpringLoadedDragController;->mAlarm:Lcom/android/launcher4/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher4/Alarm;->cancelAlarm()V

    .line 44
    iget-object v2, p0, Lcom/android/launcher4/SpringLoadedDragController;->mAlarm:Lcom/android/launcher4/Alarm;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x3b6

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher4/Alarm;->setAlarm(J)V

    .line 46
    iput-object p1, p0, Lcom/android/launcher4/SpringLoadedDragController;->mScreen:Lcom/android/launcher4/CellLayout;

    .line 47
    return-void

    .line 45
    :cond_0
    const-wide/16 v0, 0x1f4

    goto :goto_0
.end method
