.class Lcom/syu/util/AnimationUitls$2$1;
.super Ljava/lang/Object;
.source "AnimationUitls.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/util/AnimationUitls$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syu/util/AnimationUitls$2;

.field private final synthetic val$myFrames:Ljava/util/ArrayList;

.field private final synthetic val$onDrawableLoadedListener:Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;


# direct methods
.method constructor <init>(Lcom/syu/util/AnimationUitls$2;Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/util/AnimationUitls$2$1;->this$1:Lcom/syu/util/AnimationUitls$2;

    iput-object p2, p0, Lcom/syu/util/AnimationUitls$2$1;->val$onDrawableLoadedListener:Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;

    iput-object p3, p0, Lcom/syu/util/AnimationUitls$2$1;->val$myFrames:Ljava/util/ArrayList;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/syu/util/AnimationUitls$2$1;->val$onDrawableLoadedListener:Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/syu/util/AnimationUitls$2$1;->val$onDrawableLoadedListener:Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;

    iget-object v1, p0, Lcom/syu/util/AnimationUitls$2$1;->val$myFrames:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;->onDrawableLoaded(Ljava/util/List;)V

    .line 132
    :cond_0
    return-void
.end method
