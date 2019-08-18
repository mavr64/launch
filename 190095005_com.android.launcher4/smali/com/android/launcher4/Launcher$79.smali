.class Lcom/android/launcher4/Launcher$79;
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

.field private final synthetic val$tag:Ljava/lang/Object;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Landroid/content/Intent;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$79;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$79;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/launcher4/Launcher$79;->val$v:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher4/Launcher$79;->val$tag:Ljava/lang/Object;

    .line 6558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 6562
    iget-object v0, p0, Lcom/android/launcher4/Launcher$79;->this$0:Lcom/android/launcher4/Launcher;

    .line 6563
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v3

    iget v3, v3, Lshare/ResValue;->clickapp_cling:I

    .line 6562
    invoke-virtual {v0, v3}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/Cling;

    .line 6564
    .local v1, "cling":Lcom/android/launcher4/Cling;
    const/4 v2, 0x0

    .line 6566
    .local v2, "cb":Ljava/lang/Runnable;
    new-instance v2, Lcom/android/launcher4/Launcher$79$1;

    .end local v2    # "cb":Ljava/lang/Runnable;
    invoke-direct {v2, p0}, Lcom/android/launcher4/Launcher$79$1;-><init>(Lcom/android/launcher4/Launcher$79;)V

    .line 6572
    .restart local v2    # "cb":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/launcher4/Launcher$79;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v3, p0, Lcom/android/launcher4/Launcher$79;->val$intent:Landroid/content/Intent;

    .line 6573
    const/16 v4, 0xc8

    const/4 v5, 0x1

    .line 6572
    invoke-static/range {v0 .. v5}, Lcom/android/launcher4/Launcher;->access$101(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Cling;Ljava/lang/Runnable;Landroid/content/Intent;IZ)V

    .line 6575
    iget-object v0, p0, Lcom/android/launcher4/Launcher$79;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v3, p0, Lcom/android/launcher4/Launcher$79;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v4, p0, Lcom/android/launcher4/Launcher$79;->val$v:Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher4/Launcher$79;->val$intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/launcher4/Launcher$79;->val$tag:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher4/Launcher;->start(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/launcher4/Launcher;->success:Z

    .line 6577
    iget-object v0, p0, Lcom/android/launcher4/Launcher$79;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->stopVoice()V

    .line 6578
    return-void
.end method
