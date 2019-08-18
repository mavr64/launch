.class Lcom/android/launcher4/RechargeDialogFragment$RechargeAdapter;
.super Landroid/widget/BaseAdapter;
.source "RechargeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/RechargeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RechargeAdapter"
.end annotation


# instance fields
.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher4/RechargeDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher4/RechargeDialogFragment;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    iput-object p1, p0, Lcom/android/launcher4/RechargeDialogFragment$RechargeAdapter;->this$0:Lcom/android/launcher4/RechargeDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/android/launcher4/RechargeDialogFragment$RechargeAdapter;->mData:Ljava/util/ArrayList;

    .line 93
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher4/RechargeDialogFragment$RechargeAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/RechargeDialogFragment$RechargeAdapter;->mData:Ljava/util/ArrayList;

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
    .line 104
    iget-object v0, p0, Lcom/android/launcher4/RechargeDialogFragment$RechargeAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 110
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/launcher4/RechargeDialogFragment$RechargeAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/AppInfo;

    .line 116
    .local v0, "data":Lcom/android/launcher4/AppInfo;
    const/4 v1, 0x0

    .line 117
    .local v1, "viewHolder":Lcom/android/launcher4/RechargeDialogFragment$ViewHolder;
    if-nez p2, :cond_0

    .line 118
    sget-object v2, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 119
    new-instance v1, Lcom/android/launcher4/RechargeDialogFragment$ViewHolder;

    .end local v1    # "viewHolder":Lcom/android/launcher4/RechargeDialogFragment$ViewHolder;
    iget-object v2, p0, Lcom/android/launcher4/RechargeDialogFragment$RechargeAdapter;->this$0:Lcom/android/launcher4/RechargeDialogFragment;

    invoke-direct {v1, v2}, Lcom/android/launcher4/RechargeDialogFragment$ViewHolder;-><init>(Lcom/android/launcher4/RechargeDialogFragment;)V

    .line 120
    .restart local v1    # "viewHolder":Lcom/android/launcher4/RechargeDialogFragment$ViewHolder;
    const v2, 0x7f110006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/launcher4/RechargeDialogFragment$ViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 121
    const v2, 0x7f110007

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/launcher4/RechargeDialogFragment$ViewHolder;->appName:Landroid/widget/TextView;

    .line 122
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    :goto_0
    iget-object v2, v1, Lcom/android/launcher4/RechargeDialogFragment$ViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/launcher4/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    iget-object v2, v1, Lcom/android/launcher4/RechargeDialogFragment$ViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/launcher4/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-object p2

    .line 124
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "viewHolder":Lcom/android/launcher4/RechargeDialogFragment$ViewHolder;
    check-cast v1, Lcom/android/launcher4/RechargeDialogFragment$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/android/launcher4/RechargeDialogFragment$ViewHolder;
    goto :goto_0
.end method
