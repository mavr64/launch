.class Lcom/android/launcher4/Workspace$6;
.super Lcom/android/launcher4/LauncherAnimatorUpdateListener;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Workspace;->getChangeStateAnimation(Lcom/android/launcher4/Workspace$State;ZIILcom/android/launcher4/AppsCustomizePagedView$ContentType;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Workspace;

.field private final synthetic val$cl:Lcom/android/launcher4/CellLayout;

.field private final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/launcher4/Workspace;Lcom/android/launcher4/CellLayout;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Workspace$6;->this$0:Lcom/android/launcher4/Workspace;

    iput-object p2, p0, Lcom/android/launcher4/Workspace$6;->val$cl:Lcom/android/launcher4/CellLayout;

    iput p3, p0, Lcom/android/launcher4/Workspace$6;->val$i:I

    .line 2351
    invoke-direct {p0}, Lcom/android/launcher4/LauncherAnimatorUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(FF)V
    .locals 4
    .param p1, "a"    # F
    .param p2, "b"    # F

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/android/launcher4/Workspace$6;->val$cl:Lcom/android/launcher4/CellLayout;

    .line 2354
    iget-object v1, p0, Lcom/android/launcher4/Workspace$6;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v1}, Lcom/android/launcher4/Workspace;->access$15(Lcom/android/launcher4/Workspace;)[F

    move-result-object v1

    iget v2, p0, Lcom/android/launcher4/Workspace$6;->val$i:I

    aget v1, v1, v2

    mul-float/2addr v1, p1

    .line 2355
    iget-object v2, p0, Lcom/android/launcher4/Workspace$6;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v2}, Lcom/android/launcher4/Workspace;->access$16(Lcom/android/launcher4/Workspace;)[F

    move-result-object v2

    iget v3, p0, Lcom/android/launcher4/Workspace$6;->val$i:I

    aget v2, v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 2353
    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->setBackgroundAlpha(F)V

    .line 2356
    return-void
.end method
