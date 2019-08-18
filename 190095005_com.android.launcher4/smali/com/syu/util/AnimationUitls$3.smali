.class Lcom/syu/util/AnimationUitls$3;
.super Ljava/lang/Object;
.source "AnimationUitls.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/util/AnimationUitls;->animateRawManually(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$frameNumber:I

.field private final synthetic val$imageView:Landroid/widget/ImageView;

.field private final synthetic val$myFrames:Ljava/util/List;

.field private final synthetic val$onComplete:Ljava/lang/Runnable;

.field private final synthetic val$thisFrame:Lcom/syu/util/AnimationUitls$MyFrame;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcom/syu/util/AnimationUitls$MyFrame;ILjava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/util/AnimationUitls$3;->val$imageView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/syu/util/AnimationUitls$3;->val$thisFrame:Lcom/syu/util/AnimationUitls$MyFrame;

    iput p3, p0, Lcom/syu/util/AnimationUitls$3;->val$frameNumber:I

    iput-object p4, p0, Lcom/syu/util/AnimationUitls$3;->val$myFrames:Ljava/util/List;

    iput-object p5, p0, Lcom/syu/util/AnimationUitls$3;->val$onComplete:Ljava/lang/Runnable;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 167
    iget-object v1, p0, Lcom/syu/util/AnimationUitls$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/util/AnimationUitls$3;->val$thisFrame:Lcom/syu/util/AnimationUitls$MyFrame;

    iget-object v2, v2, Lcom/syu/util/AnimationUitls$MyFrame;->drawable:Landroid/graphics/drawable/Drawable;

    if-ne v1, v2, :cond_0

    .line 168
    iget v1, p0, Lcom/syu/util/AnimationUitls$3;->val$frameNumber:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/syu/util/AnimationUitls$3;->val$myFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 169
    iget-object v1, p0, Lcom/syu/util/AnimationUitls$3;->val$myFrames:Ljava/util/List;

    iget v2, p0, Lcom/syu/util/AnimationUitls$3;->val$frameNumber:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/util/AnimationUitls$MyFrame;

    .line 171
    .local v0, "nextFrame":Lcom/syu/util/AnimationUitls$MyFrame;
    iget-boolean v1, v0, Lcom/syu/util/AnimationUitls$MyFrame;->isReady:Z

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/syu/util/AnimationUitls$3;->val$myFrames:Ljava/util/List;

    iget-object v2, p0, Lcom/syu/util/AnimationUitls$3;->val$imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/syu/util/AnimationUitls$3;->val$onComplete:Ljava/lang/Runnable;

    .line 174
    iget v4, p0, Lcom/syu/util/AnimationUitls$3;->val$frameNumber:I

    add-int/lit8 v4, v4, 0x1

    .line 173
    invoke-static {v1, v2, v3, v4}, Lcom/syu/util/AnimationUitls;->access$1(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V

    .line 184
    .end local v0    # "nextFrame":Lcom/syu/util/AnimationUitls$MyFrame;
    :cond_0
    :goto_0
    return-void

    .line 176
    .restart local v0    # "nextFrame":Lcom/syu/util/AnimationUitls$MyFrame;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/syu/util/AnimationUitls$MyFrame;->isReady:Z

    goto :goto_0

    .line 179
    .end local v0    # "nextFrame":Lcom/syu/util/AnimationUitls$MyFrame;
    :cond_2
    iget-object v1, p0, Lcom/syu/util/AnimationUitls$3;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/syu/util/AnimationUitls$3;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
