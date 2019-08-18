.class Lcom/android/launcher4/Hotseat$1;
.super Ljava/lang/Object;
.source "Hotseat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Hotseat;->addDefultIcon(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Hotseat;

.field private final synthetic val$newBtn:Landroid/widget/TextView;

.field private final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Hotseat;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Hotseat$1;->this$0:Lcom/android/launcher4/Hotseat;

    iput-object p2, p0, Lcom/android/launcher4/Hotseat$1;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher4/Hotseat$1;->val$newBtn:Landroid/widget/TextView;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 229
    iget-object v1, p0, Lcom/android/launcher4/Hotseat$1;->this$0:Lcom/android/launcher4/Hotseat;

    invoke-static {v1}, Lcom/android/launcher4/Hotseat;->access$0(Lcom/android/launcher4/Hotseat;)Lcom/android/launcher4/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher4/Hotseat$1;->val$pkg:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher4/Hotseat$1;->val$pkg:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    const-string v1, "navi"

    iget-object v2, p0, Lcom/android/launcher4/Hotseat$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/launcher4/Hotseat$1;->this$0:Lcom/android/launcher4/Hotseat;

    invoke-static {v1}, Lcom/android/launcher4/Hotseat;->access$0(Lcom/android/launcher4/Hotseat;)Lcom/android/launcher4/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    .line 234
    const/16 v2, 0x18

    const/4 v3, 0x1

    new-array v3, v3, [I

    .line 235
    aput v4, v3, v4

    .line 233
    invoke-virtual {v1, v4, v2, v3}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    .line 242
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 237
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher4/Hotseat$1;->this$0:Lcom/android/launcher4/Hotseat;

    invoke-static {v1}, Lcom/android/launcher4/Hotseat;->access$0(Lcom/android/launcher4/Hotseat;)Lcom/android/launcher4/Launcher;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/android/launcher4/Hotseat$1;->val$newBtn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher4/Hotseat$1;->val$pkg:Ljava/lang/String;

    .line 237
    invoke-static {v1, v2, v0, v3}, Lcom/syu/util/ActivityStartUtils;->startActivitySafely(Landroid/content/Context;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method
