.class Lcom/android/launcher4/Workspace$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Workspace;->enableOverviewMode(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Workspace;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Workspace$5;->this$0:Lcom/android/launcher4/Workspace;

    .line 2162
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/launcher4/Workspace$5;->this$0:Lcom/android/launcher4/Workspace;

    invoke-static {v0}, Lcom/android/launcher4/Workspace;->access$14(Lcom/android/launcher4/Workspace;)V

    .line 2166
    return-void
.end method
