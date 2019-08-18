.class Lcom/android/launcher4/Folder$6;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Folder;->onDropCompleted(Landroid/view/View;Lcom/android/launcher4/DropTarget$DragObject;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Folder;

.field private final synthetic val$d:Lcom/android/launcher4/DropTarget$DragObject;

.field private final synthetic val$isFlingToDelete:Z

.field private final synthetic val$success:Z

.field private final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Folder;Landroid/view/View;Lcom/android/launcher4/DropTarget$DragObject;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Folder$6;->this$0:Lcom/android/launcher4/Folder;

    iput-object p2, p0, Lcom/android/launcher4/Folder$6;->val$target:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher4/Folder$6;->val$d:Lcom/android/launcher4/DropTarget$DragObject;

    iput-boolean p4, p0, Lcom/android/launcher4/Folder$6;->val$isFlingToDelete:Z

    iput-boolean p5, p0, Lcom/android/launcher4/Folder$6;->val$success:Z

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/launcher4/Folder$6;->this$0:Lcom/android/launcher4/Folder;

    iget-object v1, p0, Lcom/android/launcher4/Folder$6;->val$target:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher4/Folder$6;->val$d:Lcom/android/launcher4/DropTarget$DragObject;

    iget-boolean v3, p0, Lcom/android/launcher4/Folder$6;->val$isFlingToDelete:Z

    iget-boolean v4, p0, Lcom/android/launcher4/Folder$6;->val$success:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher4/Folder;->onDropCompleted(Landroid/view/View;Lcom/android/launcher4/DropTarget$DragObject;ZZ)V

    .line 733
    iget-object v0, p0, Lcom/android/launcher4/Folder$6;->this$0:Lcom/android/launcher4/Folder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher4/Folder;->access$7(Lcom/android/launcher4/Folder;Ljava/lang/Runnable;)V

    .line 734
    return-void
.end method
