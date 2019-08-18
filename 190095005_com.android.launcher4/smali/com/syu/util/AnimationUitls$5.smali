.class Lcom/syu/util/AnimationUitls$5;
.super Ljava/lang/Object;
.source "AnimationUitls.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/util/AnimationUitls;->animateDrawableManually(Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private final synthetic val$frame:Landroid/graphics/drawable/Drawable;

.field private final synthetic val$frameNumber:I

.field private final synthetic val$imageView:Landroid/widget/ImageView;

.field private final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/AnimationDrawable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/util/AnimationUitls$5;->val$imageView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/syu/util/AnimationUitls$5;->val$frame:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/syu/util/AnimationUitls$5;->val$frameNumber:I

    iput-object p4, p0, Lcom/syu/util/AnimationUitls$5;->val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iput-object p5, p0, Lcom/syu/util/AnimationUitls$5;->val$onComplete:Ljava/lang/Runnable;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/syu/util/AnimationUitls$5;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/syu/util/AnimationUitls$5;->val$frame:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_0

    .line 280
    iget v0, p0, Lcom/syu/util/AnimationUitls$5;->val$frameNumber:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/syu/util/AnimationUitls$5;->val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/syu/util/AnimationUitls$5;->val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/syu/util/AnimationUitls$5;->val$imageView:Landroid/widget/ImageView;

    .line 283
    iget-object v2, p0, Lcom/syu/util/AnimationUitls$5;->val$onComplete:Ljava/lang/Runnable;

    iget v3, p0, Lcom/syu/util/AnimationUitls$5;->val$frameNumber:I

    add-int/lit8 v3, v3, 0x1

    .line 282
    invoke-static {v0, v1, v2, v3}, Lcom/syu/util/AnimationUitls;->access$2(Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/syu/util/AnimationUitls$5;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/syu/util/AnimationUitls$5;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
