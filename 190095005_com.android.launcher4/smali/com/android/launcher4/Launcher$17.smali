.class Lcom/android/launcher4/Launcher$17;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$17;->this$0:Lcom/android/launcher4/Launcher;

    .line 5256
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5259
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 5260
    const/4 v1, 0x0

    .line 5261
    .local v1, "i":I
    iget-object v4, p0, Lcom/android/launcher4/Launcher$17;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v4}, Lcom/android/launcher4/Launcher;->access$60(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5274
    iget-object v4, p0, Lcom/android/launcher4/Launcher$17;->this$0:Lcom/android/launcher4/Launcher;

    const-wide/16 v6, 0x4e20

    invoke-static {v4, v6, v7}, Lcom/android/launcher4/Launcher;->access$61(Lcom/android/launcher4/Launcher;J)V

    .line 5276
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 5261
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 5263
    .local v2, "key":Landroid/view/View;
    iget-object v4, p0, Lcom/android/launcher4/Launcher$17;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v4}, Lcom/android/launcher4/Launcher;->access$60(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    iget v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 5264
    .local v3, "v":Landroid/view/View;
    mul-int/lit16 v0, v1, 0xfa

    .line 5265
    .local v0, "delay":I
    instance-of v4, v3, Landroid/widget/Advanceable;

    if-eqz v4, :cond_2

    .line 5266
    new-instance v4, Lcom/android/launcher4/Launcher$17$1;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher4/Launcher$17$1;-><init>(Lcom/android/launcher4/Launcher$17;Landroid/view/View;)V

    .line 5270
    int-to-long v6, v0

    .line 5266
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/launcher4/Launcher$17;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5272
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
