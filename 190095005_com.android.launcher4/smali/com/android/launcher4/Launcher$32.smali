.class Lcom/android/launcher4/Launcher$32;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->adasCarDist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$32;->this$0:Lcom/android/launcher4/Launcher;

    .line 2415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2417
    invoke-static {}, Lcom/syu/util/Print;->getPrint()Lcom/syu/util/Print;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adasCarDist -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher4/Launcher$32;->this$0:Lcom/android/launcher4/Launcher;

    iget-boolean v2, v2, Lcom/android/launcher4/Launcher;->isAnimaStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/util/Print;->d(Ljava/lang/String;)V

    .line 2418
    iget-object v0, p0, Lcom/android/launcher4/Launcher$32;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$32;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$22(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$24(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    .line 2419
    iget-object v0, p0, Lcom/android/launcher4/Launcher$32;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$87(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2420
    iget-object v0, p0, Lcom/android/launcher4/Launcher$32;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$85(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2421
    iget-object v0, p0, Lcom/android/launcher4/Launcher$32;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$22(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020493

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2422
    iget-object v0, p0, Lcom/android/launcher4/Launcher$32;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$32;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$82(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$24(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    .line 2423
    iget-object v0, p0, Lcom/android/launcher4/Launcher$32;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$32;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$21(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$25(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    .line 2424
    iget-object v0, p0, Lcom/android/launcher4/Launcher$32;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$32;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$83(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$25(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    .line 2425
    iget-object v0, p0, Lcom/android/launcher4/Launcher$32;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$32;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$23(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$25(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    .line 2427
    return-void
.end method
