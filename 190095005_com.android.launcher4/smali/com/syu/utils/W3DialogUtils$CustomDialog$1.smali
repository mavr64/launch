.class Lcom/syu/utils/W3DialogUtils$CustomDialog$1;
.super Ljava/lang/Object;
.source "W3DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/utils/W3DialogUtils$CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syu/utils/W3DialogUtils$CustomDialog;


# direct methods
.method constructor <init>(Lcom/syu/utils/W3DialogUtils$CustomDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog$1;->this$1:Lcom/syu/utils/W3DialogUtils$CustomDialog;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 245
    :pswitch_0
    iget-object v0, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog$1;->this$1:Lcom/syu/utils/W3DialogUtils$CustomDialog;

    invoke-virtual {v0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->dismiss()V

    .line 246
    iget-object v0, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog$1;->this$1:Lcom/syu/utils/W3DialogUtils$CustomDialog;

    invoke-virtual {v0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->stratActivityByName()V

    goto :goto_0

    .line 249
    :pswitch_1
    iget-object v0, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog$1;->this$1:Lcom/syu/utils/W3DialogUtils$CustomDialog;

    invoke-virtual {v0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->dismiss()V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x7f080f00
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
