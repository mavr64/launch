.class Lcom/syu/logo/CarLogoDialogFragment$CarLogoAdapter;
.super Landroid/widget/BaseAdapter;
.source "CarLogoDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/logo/CarLogoDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarLogoAdapter"
.end annotation


# instance fields
.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/syu/logo/CarLogoDialogFragment;


# direct methods
.method public constructor <init>(Lcom/syu/logo/CarLogoDialogFragment;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/syu/logo/CarLogoDialogFragment$CarLogoAdapter;->this$0:Lcom/syu/logo/CarLogoDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/syu/logo/CarLogoDialogFragment$CarLogoAdapter;->mData:Ljava/util/ArrayList;

    .line 68
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/syu/logo/CarLogoDialogFragment$CarLogoAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/logo/CarLogoDialogFragment$CarLogoAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/syu/logo/CarLogoDialogFragment$CarLogoAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 82
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 87
    iget-object v2, p0, Lcom/syu/logo/CarLogoDialogFragment$CarLogoAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    .local v0, "data":I
    const/4 v1, 0x0

    .line 89
    .local v1, "viewHolder":Lcom/syu/logo/CarLogoDialogFragment$ViewHolder;
    if-nez p2, :cond_0

    .line 90
    sget-object v2, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 91
    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 92
    new-instance v1, Lcom/syu/logo/CarLogoDialogFragment$ViewHolder;

    .end local v1    # "viewHolder":Lcom/syu/logo/CarLogoDialogFragment$ViewHolder;
    iget-object v2, p0, Lcom/syu/logo/CarLogoDialogFragment$CarLogoAdapter;->this$0:Lcom/syu/logo/CarLogoDialogFragment;

    invoke-direct {v1, v2}, Lcom/syu/logo/CarLogoDialogFragment$ViewHolder;-><init>(Lcom/syu/logo/CarLogoDialogFragment;)V

    .line 94
    .restart local v1    # "viewHolder":Lcom/syu/logo/CarLogoDialogFragment$ViewHolder;
    const v2, 0x7f110005

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 93
    iput-object v2, v1, Lcom/syu/logo/CarLogoDialogFragment$ViewHolder;->logoIcon:Landroid/widget/ImageView;

    .line 95
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    :goto_0
    iget-object v2, v1, Lcom/syu/logo/CarLogoDialogFragment$ViewHolder;->logoIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    return-object p2

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "viewHolder":Lcom/syu/logo/CarLogoDialogFragment$ViewHolder;
    check-cast v1, Lcom/syu/logo/CarLogoDialogFragment$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/syu/logo/CarLogoDialogFragment$ViewHolder;
    goto :goto_0
.end method
