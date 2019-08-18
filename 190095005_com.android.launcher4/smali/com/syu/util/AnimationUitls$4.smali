.class Lcom/syu/util/AnimationUitls$4;
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


# direct methods
.method constructor <init>(Ljava/util/List;ILandroid/widget/ImageView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/util/AnimationUitls$4;->val$myFrames:Ljava/util/List;

    iput p2, p0, Lcom/syu/util/AnimationUitls$4;->val$frameNumber:I

    iput-object p3, p0, Lcom/syu/util/AnimationUitls$4;->val$imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/syu/util/AnimationUitls$4;->val$onComplete:Ljava/lang/Runnable;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 192
    iget-object v1, p0, Lcom/syu/util/AnimationUitls$4;->val$myFrames:Ljava/util/List;

    iget v2, p0, Lcom/syu/util/AnimationUitls$4;->val$frameNumber:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/util/AnimationUitls$MyFrame;

    .line 193
    .local v0, "nextFrame":Lcom/syu/util/AnimationUitls$MyFrame;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/syu/util/AnimationUitls$4;->val$imageView:Landroid/widget/ImageView;

    .line 194
    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 195
    iget-object v3, v0, Lcom/syu/util/AnimationUitls$MyFrame;->bytes:[B

    const/4 v4, 0x0

    .line 196
    iget-object v5, v0, Lcom/syu/util/AnimationUitls$MyFrame;->bytes:[B

    array-length v5, v5

    .line 195
    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 193
    iput-object v1, v0, Lcom/syu/util/AnimationUitls$MyFrame;->drawable:Landroid/graphics/drawable/Drawable;

    .line 197
    iget-boolean v1, v0, Lcom/syu/util/AnimationUitls$MyFrame;->isReady:Z

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/syu/util/AnimationUitls$4;->val$myFrames:Ljava/util/List;

    iget-object v2, p0, Lcom/syu/util/AnimationUitls$4;->val$imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/syu/util/AnimationUitls$4;->val$onComplete:Ljava/lang/Runnable;

    .line 200
    iget v4, p0, Lcom/syu/util/AnimationUitls$4;->val$frameNumber:I

    add-int/lit8 v4, v4, 0x1

    .line 199
    invoke-static {v1, v2, v3, v4}, Lcom/syu/util/AnimationUitls;->access$1(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/syu/util/AnimationUitls$MyFrame;->isReady:Z

    goto :goto_0
.end method
