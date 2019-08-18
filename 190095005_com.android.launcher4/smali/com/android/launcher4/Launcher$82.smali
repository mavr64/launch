.class Lcom/android/launcher4/Launcher$82;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$82;->this$0:Lcom/android/launcher4/Launcher;

    .line 7151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 7155
    iget-object v0, p0, Lcom/android/launcher4/Launcher$82;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getDragController()Lcom/android/launcher4/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7156
    iget-object v0, p0, Lcom/android/launcher4/Launcher$82;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$105(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/Launcher$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher4/Launcher$State;->WORKSPACE:Lcom/android/launcher4/Launcher$State;

    if-ne v0, v1, :cond_0

    .line 7157
    iget-object v0, p0, Lcom/android/launcher4/Launcher$82;->this$0:Lcom/android/launcher4/Launcher;

    .line 7158
    sget-object v1, Lcom/android/launcher4/Workspace$State;->SPRING_LOADED:Lcom/android/launcher4/Workspace$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 7159
    const/4 v4, 0x0

    .line 7157
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher4/Launcher;->access$106(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Workspace$State;ZZLjava/lang/Runnable;)V

    .line 7160
    iget-object v0, p0, Lcom/android/launcher4/Launcher$82;->this$0:Lcom/android/launcher4/Launcher;

    sget-object v1, Lcom/android/launcher4/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher4/Launcher$State;

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$107(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Launcher$State;)V

    .line 7162
    :cond_0
    return-void
.end method
