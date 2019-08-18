.class Lcom/android/launcher4/Launcher$92;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$anim:Landroid/animation/AnimatorSet;

.field private final synthetic val$bounceAnims:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$92;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$92;->val$anim:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/android/launcher4/Launcher$92;->val$bounceAnims:Ljava/util/Collection;

    .line 8428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8430
    iget-object v0, p0, Lcom/android/launcher4/Launcher$92;->val$anim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$92;->val$bounceAnims:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 8431
    iget-object v0, p0, Lcom/android/launcher4/Launcher$92;->val$anim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 8432
    return-void
.end method
