.class Lcom/android/launcher4/Folder$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Folder;->animateClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Folder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Folder$5;->this$0:Lcom/android/launcher4/Folder;

    .line 495
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 498
    iget-object v0, p0, Lcom/android/launcher4/Folder$5;->this$0:Lcom/android/launcher4/Folder;

    invoke-static {v0}, Lcom/android/launcher4/Folder;->access$6(Lcom/android/launcher4/Folder;)V

    .line 499
    iget-object v0, p0, Lcom/android/launcher4/Folder$5;->this$0:Lcom/android/launcher4/Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher4/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 500
    iget-object v0, p0, Lcom/android/launcher4/Folder$5;->this$0:Lcom/android/launcher4/Folder;

    invoke-static {v0, v2}, Lcom/android/launcher4/Folder;->access$4(Lcom/android/launcher4/Folder;I)V

    .line 501
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/launcher4/Folder$5;->this$0:Lcom/android/launcher4/Folder;

    const/16 v1, 0x20

    .line 505
    iget-object v2, p0, Lcom/android/launcher4/Folder$5;->this$0:Lcom/android/launcher4/Folder;

    invoke-virtual {v2}, Lcom/android/launcher4/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c005b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 504
    invoke-static {v0, v1, v2}, Lcom/android/launcher4/Folder;->access$3(Lcom/android/launcher4/Folder;ILjava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/android/launcher4/Folder$5;->this$0:Lcom/android/launcher4/Folder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher4/Folder;->access$4(Lcom/android/launcher4/Folder;I)V

    .line 507
    return-void
.end method
