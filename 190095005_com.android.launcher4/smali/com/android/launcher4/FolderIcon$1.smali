.class Lcom/android/launcher4/FolderIcon$1;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/FolderIcon;->onDrop(Lcom/android/launcher4/ShortcutInfo;Lcom/android/launcher4/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher4/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/FolderIcon;

.field private final synthetic val$item:Lcom/android/launcher4/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher4/FolderIcon;Lcom/android/launcher4/ShortcutInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/FolderIcon$1;->this$0:Lcom/android/launcher4/FolderIcon;

    iput-object p2, p0, Lcom/android/launcher4/FolderIcon$1;->val$item:Lcom/android/launcher4/ShortcutInfo;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon$1;->this$0:Lcom/android/launcher4/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher4/FolderIcon;->access$3(Lcom/android/launcher4/FolderIcon;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$1;->val$item:Lcom/android/launcher4/ShortcutInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 425
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon$1;->this$0:Lcom/android/launcher4/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher4/FolderIcon;->access$4(Lcom/android/launcher4/FolderIcon;)Lcom/android/launcher4/Folder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$1;->val$item:Lcom/android/launcher4/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Folder;->showItem(Lcom/android/launcher4/ShortcutInfo;)V

    .line 426
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon$1;->this$0:Lcom/android/launcher4/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher4/FolderIcon;->invalidate()V

    .line 427
    return-void
.end method
