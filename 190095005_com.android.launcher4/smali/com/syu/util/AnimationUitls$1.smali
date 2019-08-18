.class Lcom/syu/util/AnimationUitls$1;
.super Ljava/lang/Object;
.source "AnimationUitls.java"

# interfaces
.implements Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/util/AnimationUitls;->animateRawManuallyFromXML(ILandroid/widget/ImageView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$imageView:Landroid/widget/ImageView;

.field private final synthetic val$onComplete:Ljava/lang/Runnable;

.field private final synthetic val$onStart:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/widget/ImageView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/util/AnimationUitls$1;->val$onStart:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/syu/util/AnimationUitls$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/syu/util/AnimationUitls$1;->val$onComplete:Ljava/lang/Runnable;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawableLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/syu/util/AnimationUitls$MyFrame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "myFrames":Ljava/util/List;, "Ljava/util/List<Lcom/syu/util/AnimationUitls$MyFrame;>;"
    iget-object v0, p0, Lcom/syu/util/AnimationUitls$1;->val$onStart:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/syu/util/AnimationUitls$1;->val$onStart:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/syu/util/AnimationUitls$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/syu/util/AnimationUitls$1;->val$onComplete:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lcom/syu/util/AnimationUitls;->access$0(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method
