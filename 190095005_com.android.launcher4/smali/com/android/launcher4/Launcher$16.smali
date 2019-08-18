.class Lcom/android/launcher4/Launcher$16;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Launcher;
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$16;->this$0:Lcom/android/launcher4/Launcher;

    .line 5121
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 5124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5125
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5126
    iget-object v1, p0, Lcom/android/launcher4/Launcher$16;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1, v6}, Lcom/android/launcher4/Launcher;->access$55(Lcom/android/launcher4/Launcher;Z)V

    .line 5127
    iget-object v1, p0, Lcom/android/launcher4/Launcher$16;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$56(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher4/DragLayer;->clearAllResizeFrames()V

    .line 5128
    iget-object v1, p0, Lcom/android/launcher4/Launcher$16;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$57(Lcom/android/launcher4/Launcher;)V

    .line 5133
    iget-object v1, p0, Lcom/android/launcher4/Launcher$16;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$58(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/AppsCustomizeTabHost;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5134
    iget-object v1, p0, Lcom/android/launcher4/Launcher$16;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$59(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/ItemInfo;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/launcher4/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 5135
    iget-object v1, p0, Lcom/android/launcher4/Launcher$16;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1, v6}, Lcom/android/launcher4/Launcher;->showWorkspace(Z)V

    .line 5141
    :cond_0
    :goto_0
    return-void

    .line 5137
    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5138
    iget-object v1, p0, Lcom/android/launcher4/Launcher$16;->this$0:Lcom/android/launcher4/Launcher;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher4/Launcher;->access$55(Lcom/android/launcher4/Launcher;Z)V

    .line 5139
    iget-object v1, p0, Lcom/android/launcher4/Launcher$16;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$57(Lcom/android/launcher4/Launcher;)V

    goto :goto_0
.end method
