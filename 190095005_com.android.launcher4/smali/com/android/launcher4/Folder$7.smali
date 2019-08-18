.class Lcom/android/launcher4/Folder$7;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Folder;->replaceFolderWithFinalItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Folder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    .line 1050
    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v2, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v2, v2, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-wide v4, v2, Lcom/android/launcher4/FolderInfo;->container:J

    iget-object v2, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v2, v2, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-wide v6, v2, Lcom/android/launcher4/FolderInfo;->screenId:J

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/launcher4/Launcher;->getCellLayout(JJ)Lcom/android/launcher4/CellLayout;

    move-result-object v12

    .line 1052
    .local v12, "cellLayout":Lcom/android/launcher4/CellLayout;
    const/4 v3, 0x0

    .line 1054
    .local v3, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    invoke-virtual {v0}, Lcom/android/launcher4/Folder;->getItemCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher4/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/ShortcutInfo;

    .line 1056
    .local v1, "finalItem":Lcom/android/launcher4/ShortcutInfo;
    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    const v2, 0x7f040008

    invoke-virtual {v0, v2, v12, v1}, Lcom/android/launcher4/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher4/ShortcutInfo;)Landroid/view/View;

    move-result-object v13

    .line 1058
    .end local v3    # "child":Landroid/view/View;
    .local v13, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v2, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v2, v2, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher4/FolderInfo;->container:J

    .line 1059
    iget-object v4, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v4, v4, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-wide v4, v4, Lcom/android/launcher4/FolderInfo;->screenId:J

    iget-object v6, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v6, v6, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget v6, v6, Lcom/android/launcher4/FolderInfo;->cellX:I

    iget-object v7, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v7, v7, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget v7, v7, Lcom/android/launcher4/FolderInfo;->cellY:I

    .line 1058
    invoke-static/range {v0 .. v7}, Lcom/android/launcher4/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJII)V

    move-object v3, v13

    .line 1061
    .end local v1    # "finalItem":Lcom/android/launcher4/ShortcutInfo;
    .end local v13    # "child":Landroid/view/View;
    .restart local v3    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    invoke-virtual {v0}, Lcom/android/launcher4/Folder;->getItemCount()I

    move-result v0

    if-gt v0, v8, :cond_2

    .line 1063
    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v2, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v2, v2, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    invoke-static {v0, v2}, Lcom/android/launcher4/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;)V

    .line 1064
    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    invoke-static {v0}, Lcom/android/launcher4/Folder;->access$8(Lcom/android/launcher4/Folder;)Lcom/android/launcher4/FolderIcon;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/launcher4/CellLayout;->removeView(Landroid/view/View;)V

    .line 1065
    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    invoke-static {v0}, Lcom/android/launcher4/Folder;->access$8(Lcom/android/launcher4/Folder;)Lcom/android/launcher4/FolderIcon;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher4/DropTarget;

    if-eqz v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v2, v0, Lcom/android/launcher4/Folder;->mDragController:Lcom/android/launcher4/DragController;

    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    invoke-static {v0}, Lcom/android/launcher4/Folder;->access$8(Lcom/android/launcher4/Folder;)Lcom/android/launcher4/FolderIcon;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/DropTarget;

    invoke-virtual {v2, v0}, Lcom/android/launcher4/DragController;->removeDropTarget(Lcom/android/launcher4/DropTarget;)V

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v2, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v2, v2, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher4/Launcher;->removeFolder(Lcom/android/launcher4/FolderInfo;)V

    .line 1073
    :cond_2
    if-eqz v3, :cond_3

    .line 1074
    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-wide v4, v0, Lcom/android/launcher4/FolderInfo;->container:J

    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-wide v6, v0, Lcom/android/launcher4/FolderInfo;->screenId:J

    .line 1075
    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget v8, v0, Lcom/android/launcher4/FolderInfo;->cellX:I

    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget v9, v0, Lcom/android/launcher4/FolderInfo;->cellY:I

    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget v10, v0, Lcom/android/launcher4/FolderInfo;->spanX:I

    iget-object v0, p0, Lcom/android/launcher4/Folder$7;->this$0:Lcom/android/launcher4/Folder;

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget v11, v0, Lcom/android/launcher4/FolderInfo;->spanY:I

    .line 1074
    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher4/Workspace;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    .line 1077
    :cond_3
    return-void
.end method
