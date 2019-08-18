.class public Lcom/fyt/widget/LauncherList_Adapter;
.super Landroid/widget/BaseAdapter;
.source "LauncherList_Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private focus_id:I

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sum:J


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2
    .param p2, "context2"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "string_AppName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyt/widget/LauncherList_Adapter;->sum:J

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyt/widget/LauncherList_Adapter;->list:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/fyt/widget/LauncherList_Adapter;->focus_id:I

    .line 26
    iput-object p1, p0, Lcom/fyt/widget/LauncherList_Adapter;->list:Ljava/util/ArrayList;

    .line 27
    iput-object p2, p0, Lcom/fyt/widget/LauncherList_Adapter;->context:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fyt/widget/LauncherList_Adapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fyt/widget/LauncherList_Adapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fyt/widget/LauncherList_Adapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 63
    .local v4, "star":J
    if-nez p2, :cond_0

    .line 64
    new-instance v3, Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;-><init>(Lcom/fyt/widget/LauncherList_Adapter;)V

    .line 65
    .local v3, "viewHolder":Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;
    iget-object v6, p0, Lcom/fyt/widget/LauncherList_Adapter;->context:Landroid/content/Context;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v7

    iget v7, v7, Lshare/ResValue;->item_applist:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v6

    iget v6, v6, Lshare/ResValue;->appbtn_bg:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 66
    iput-object v6, v3, Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;->appbtn_bg:Landroid/widget/ImageView;

    .line 71
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v6

    iget v6, v6, Lshare/ResValue;->app_name:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 70
    invoke-static {v3, v6}, Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;->access$0(Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;Landroid/widget/TextView;)V

    .line 73
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    .end local v3    # "viewHolder":Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;

    .line 76
    .restart local v3    # "viewHolder":Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;
    iget-object v6, p0, Lcom/fyt/widget/LauncherList_Adapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, "myString":Ljava/lang/String;
    invoke-static {v3}, Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;->access$1(Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget v6, p0, Lcom/fyt/widget/LauncherList_Adapter;->focus_id:I

    if-ne v6, p1, :cond_1

    .line 81
    iget-object v6, v3, Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;->appbtn_bg:Landroid/widget/ImageView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v7

    iget v7, v7, Lshare/ResValue;->applist_f:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 85
    :goto_0
    const-string v6, "adapter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  ** getView ** position = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " focus_id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/fyt/widget/LauncherList_Adapter;->focus_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 87
    .local v0, "end":J
    iget-wide v6, p0, Lcom/fyt/widget/LauncherList_Adapter;->sum:J

    sub-long v8, v0, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/fyt/widget/LauncherList_Adapter;->sum:J

    .line 88
    const-string v6, "main"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "app list sum = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/fyt/widget/LauncherList_Adapter;->sum:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-object p2

    .line 83
    .end local v0    # "end":J
    :cond_1
    iget-object v6, v3, Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;->appbtn_bg:Landroid/widget/ImageView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v7

    iget v7, v7, Lshare/ResValue;->applist_n:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public getfocus()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/fyt/widget/LauncherList_Adapter;->focus_id:I

    return v0
.end method

.method public setfocus(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/fyt/widget/LauncherList_Adapter;->focus_id:I

    .line 52
    return-void
.end method
