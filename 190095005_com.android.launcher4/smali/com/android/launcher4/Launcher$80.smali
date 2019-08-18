.class Lcom/android/launcher4/Launcher$80;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$80;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$80;->val$intent:Landroid/content/Intent;

    .line 6583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 6587
    iget-object v0, p0, Lcom/android/launcher4/Launcher$80;->this$0:Lcom/android/launcher4/Launcher;

    .line 6588
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->clickapp_cling:I

    .line 6587
    invoke-virtual {v0, v3}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/Cling;

    .line 6589
    .local v1, "cling":Lcom/android/launcher4/Cling;
    const/4 v2, 0x0

    .line 6591
    .local v2, "cb":Ljava/lang/Runnable;
    new-instance v2, Lcom/android/launcher4/Launcher$80$1;

    .end local v2    # "cb":Ljava/lang/Runnable;
    invoke-direct {v2, p0}, Lcom/android/launcher4/Launcher$80$1;-><init>(Lcom/android/launcher4/Launcher$80;)V

    .line 6597
    .restart local v2    # "cb":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/launcher4/Launcher$80;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v3, p0, Lcom/android/launcher4/Launcher$80;->val$intent:Landroid/content/Intent;

    .line 6598
    const/16 v4, 0xc8

    const/4 v5, 0x1

    .line 6597
    invoke-static/range {v0 .. v5}, Lcom/android/launcher4/Launcher;->access$101(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Cling;Ljava/lang/Runnable;Landroid/content/Intent;IZ)V

    .line 6599
    iget-object v0, p0, Lcom/android/launcher4/Launcher$80;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->stopVoice()V

    .line 6600
    iget-object v0, p0, Lcom/android/launcher4/Launcher$80;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$102(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/BubbleTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6603
    iget-object v0, p0, Lcom/android/launcher4/Launcher$80;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$102(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/BubbleTextView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher4/BubbleTextView;->setStayPressed(Z)V

    .line 6605
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher$80;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$103(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/AppsCustomizePagedView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6607
    iget-object v0, p0, Lcom/android/launcher4/Launcher$80;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$103(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizePagedView;->resetDrawableState()V

    .line 6609
    :cond_1
    return-void
.end method
