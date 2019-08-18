.class Lcom/android/launcher4/Launcher$24;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->completeTwoStageWidgetDrop(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$24;->this$0:Lcom/android/launcher4/Launcher;

    iput p2, p0, Lcom/android/launcher4/Launcher$24;->val$resultCode:I

    .line 1525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1528
    iget-object v2, p0, Lcom/android/launcher4/Launcher$24;->this$0:Lcom/android/launcher4/Launcher;

    .line 1529
    iget v0, p0, Lcom/android/launcher4/Launcher$24;->val$resultCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    .line 1528
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/launcher4/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V

    .line 1530
    return-void

    :cond_0
    move v0, v1

    .line 1529
    goto :goto_0
.end method
