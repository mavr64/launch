.class Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher4/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderCreationAlarmListener"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field layout:Lcom/android/launcher4/CellLayout;

.field final synthetic this$0:Lcom/android/launcher4/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher4/Workspace;Lcom/android/launcher4/CellLayout;II)V
    .locals 0
    .param p2, "layout"    # Lcom/android/launcher4/CellLayout;
    .param p3, "cellX"    # I
    .param p4, "cellY"    # I

    .prologue
    .line 4008
    iput-object p1, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher4/Workspace;

    .line 4007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4009
    iput-object p2, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher4/CellLayout;

    .line 4010
    iput p3, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->cellX:I

    .line 4011
    iput p4, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->cellY:I

    .line 4012
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher4/Alarm;)V
    .locals 4
    .param p1, "alarm"    # Lcom/android/launcher4/Alarm;

    .prologue
    .line 4015
    iget-object v0, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v0}, Lcom/android/launcher4/Workspace;->access$4(Lcom/android/launcher4/Workspace;)Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4018
    iget-object v0, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v0}, Lcom/android/launcher4/Workspace;->access$4(Lcom/android/launcher4/Workspace;)Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 4020
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher4/Workspace;

    new-instance v1, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    iget-object v2, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v2}, Lcom/android/launcher4/Workspace;->access$0(Lcom/android/launcher4/Workspace;)Lcom/android/launcher4/Launcher;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;-><init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/FolderIcon;)V

    invoke-static {v0, v1}, Lcom/android/launcher4/Workspace;->access$5(Lcom/android/launcher4/Workspace;Lcom/android/launcher4/FolderIcon$FolderRingAnimator;)V

    .line 4021
    iget-object v0, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v0}, Lcom/android/launcher4/Workspace;->access$4(Lcom/android/launcher4/Workspace;)Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->cellX:I

    iget v2, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->cellY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->setCell(II)V

    .line 4022
    iget-object v0, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v0}, Lcom/android/launcher4/Workspace;->access$4(Lcom/android/launcher4/Workspace;)Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->setCellLayout(Lcom/android/launcher4/CellLayout;)V

    .line 4023
    iget-object v0, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v0}, Lcom/android/launcher4/Workspace;->access$4(Lcom/android/launcher4/Workspace;)Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->animateToAcceptState()V

    .line 4024
    iget-object v0, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher4/CellLayout;

    iget-object v1, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v1}, Lcom/android/launcher4/Workspace;->access$4(Lcom/android/launcher4/Workspace;)Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->showFolderAccept(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;)V

    .line 4025
    iget-object v0, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->clearDragOutlines()V

    .line 4026
    iget-object v0, p0, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher4/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->setDragMode(I)V

    .line 4027
    return-void
.end method
