.class Lcom/android/launcher4/Workspace$8;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Workspace;->onDrop(Lcom/android/launcher4/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Workspace;

.field private final synthetic val$cellLayout:Lcom/android/launcher4/CellLayout;

.field private final synthetic val$hostView:Lcom/android/launcher4/LauncherAppWidgetHostView;

.field private final synthetic val$info:Lcom/android/launcher4/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Workspace;Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/LauncherAppWidgetHostView;Lcom/android/launcher4/CellLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Workspace$8;->this$0:Lcom/android/launcher4/Workspace;

    iput-object p2, p0, Lcom/android/launcher4/Workspace$8;->val$info:Lcom/android/launcher4/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher4/Workspace$8;->val$hostView:Lcom/android/launcher4/LauncherAppWidgetHostView;

    iput-object p4, p0, Lcom/android/launcher4/Workspace$8;->val$cellLayout:Lcom/android/launcher4/CellLayout;

    .line 3373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3375
    iget-object v1, p0, Lcom/android/launcher4/Workspace$8;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v1}, Lcom/android/launcher4/Workspace;->access$0(Lcom/android/launcher4/Workspace;)Lcom/android/launcher4/Launcher;

    move-result-object v1

    .line 3376
    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v0

    .line 3377
    .local v0, "dragLayer":Lcom/android/launcher4/DragLayer;
    iget-object v1, p0, Lcom/android/launcher4/Workspace$8;->val$info:Lcom/android/launcher4/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher4/Workspace$8;->val$hostView:Lcom/android/launcher4/LauncherAppWidgetHostView;

    .line 3378
    iget-object v3, p0, Lcom/android/launcher4/Workspace$8;->val$cellLayout:Lcom/android/launcher4/CellLayout;

    .line 3377
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher4/DragLayer;->addResizeFrame(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/LauncherAppWidgetHostView;Lcom/android/launcher4/CellLayout;)V

    .line 3379
    return-void
.end method
