.class public Lcom/syu/utils/W3DialogUtils$CustomDialog;
.super Landroid/app/Dialog;
.source "W3DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/utils/W3DialogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomDialog"
.end annotation


# instance fields
.field clickListener:Landroid/view/View$OnClickListener;

.field msg:Ljava/lang/String;

.field negative:Ljava/lang/String;

.field positive:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;-><init>(Landroid/content/Context;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 46
    iput-object v0, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->title:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->msg:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->positive:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->negative:Ljava/lang/String;

    .line 239
    new-instance v0, Lcom/syu/utils/W3DialogUtils$CustomDialog$1;

    invoke-direct {v0, p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog$1;-><init>(Lcom/syu/utils/W3DialogUtils$CustomDialog;)V

    iput-object v0, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 66
    invoke-virtual {p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 46
    iput-object v0, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->title:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->msg:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->positive:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->negative:Ljava/lang/String;

    .line 239
    new-instance v0, Lcom/syu/utils/W3DialogUtils$CustomDialog$1;

    invoke-direct {v0, p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog$1;-><init>(Lcom/syu/utils/W3DialogUtils$CustomDialog;)V

    iput-object v0, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 57
    invoke-virtual {p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->init()V

    .line 58
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    const/high16 v3, 0x20000

    .line 77
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->requestWindowFeature(I)Z

    .line 78
    invoke-virtual {p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 80
    .local v1, "w":Landroid/view/Window;
    const/16 v2, 0x7d7

    .line 79
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 82
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 85
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 88
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x1f4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 89
    const/16 v2, 0x154

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 90
    invoke-virtual {p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 91
    invoke-virtual {p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 92
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 98
    .local v1, "context":Landroid/content/Context;
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 99
    .local v6, "root":Landroid/widget/LinearLayout;
    const-string v11, "#e8e8e8"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 100
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    const/16 v11, 0x11

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 102
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    .line 103
    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 106
    .local v8, "title":Landroid/widget/TextView;
    const/high16 v11, -0x10000

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v11, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->title:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 108
    iget-object v11, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->title:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    const v11, 0x7f080f02

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setId(I)V

    .line 111
    const/high16 v11, 0x41f00000    # 30.0f

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 112
    const/16 v11, 0x11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 113
    const/4 v11, 0x0

    const/16 v12, 0xf

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 115
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    const/4 v11, -0x1

    .line 117
    const/4 v12, -0x2

    .line 115
    invoke-direct {v4, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 121
    .local v10, "view1":Landroid/view/View;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, -0x1

    const/16 v12, 0xf

    invoke-direct {v4, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 125
    .local v7, "textView":Landroid/widget/TextView;
    const-string v11, "#a7a7a7"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 126
    const/16 v11, 0x12c

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setWidth(I)V

    .line 127
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setHeight(I)V

    .line 128
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 131
    .local v5, "msg":Landroid/widget/TextView;
    const/high16 v11, -0x1000000

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v11, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->msg:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 133
    iget-object v11, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->msg:Ljava/lang/String;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_1
    const v11, 0x7f080f03

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setId(I)V

    .line 136
    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 137
    const/16 v11, 0xb4

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setHeight(I)V

    .line 138
    const/16 v11, 0x1f4

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setWidth(I)V

    .line 139
    const/16 v11, 0x1e

    const/16 v12, 0x14

    const/16 v13, 0x1e

    const/16 v14, 0x1e

    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 140
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x1f4

    .line 141
    const/4 v12, -0x2

    .line 140
    invoke-direct {v4, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 145
    .local v3, "layout":Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x14

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 146
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    const/16 v11, 0x11

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 149
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 150
    .local v2, "drawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, 0x10100a7

    aput v13, v11, v12

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    const-string v13, "#8b8b8b"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v11, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 151
    const/4 v11, 0x0

    new-array v11, v11, [I

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    const-string v13, "#a7a7a7"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v11, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 153
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v0, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "button":Landroid/widget/Button;
    iget-object v11, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->positive:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 155
    iget-object v11, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->positive:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_2
    const/high16 v11, -0x1000000

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 158
    const v11, 0x7f080f00

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setId(I)V

    .line 159
    const/16 v11, 0xb2

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setWidth(I)V

    .line 160
    const/16 v11, 0x3e

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setHeight(I)V

    .line 161
    const/high16 v11, 0x41c80000    # 25.0f

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setTextSize(F)V

    .line 162
    iget-object v11, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    new-instance v9, Landroid/view/View;

    invoke-virtual {p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 167
    .local v9, "view":Landroid/view/View;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x50

    const/16 v12, 0x32

    invoke-direct {v4, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 171
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, -0x1

    .line 172
    const/4 v12, -0x2

    .line 170
    invoke-direct {v4, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 175
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 176
    .restart local v2    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, 0x10100a7

    aput v13, v11, v12

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    const-string v13, "#8b8b8b"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v11, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 177
    const/4 v11, 0x0

    new-array v11, v11, [I

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    const-string v13, "#a7a7a7"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v11, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 178
    new-instance v0, Landroid/widget/Button;

    .end local v0    # "button":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v0, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 179
    .restart local v0    # "button":Landroid/widget/Button;
    iget-object v11, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->negative:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 180
    iget-object v11, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->negative:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_3
    const/high16 v11, -0x1000000

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 183
    const v11, 0x7f080f01

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setId(I)V

    .line 184
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 185
    const/16 v11, 0xb2

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setWidth(I)V

    .line 186
    const/16 v11, 0x3e

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setHeight(I)V

    .line 187
    const/high16 v11, 0x41c80000    # 25.0f

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setTextSize(F)V

    .line 188
    iget-object v11, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    invoke-virtual {v6, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    invoke-virtual {p0, v6}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->setContentView(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method public setButton(II)V
    .locals 2
    .param p1, "positive"    # I
    .param p2, "negative"    # I

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->setButton(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public setButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "positive"    # Ljava/lang/String;
    .param p2, "negative"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->positive:Ljava/lang/String;

    .line 223
    iput-object p2, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->negative:Ljava/lang/String;

    .line 224
    const v1, 0x7f080f00

    invoke-virtual {p0, v1}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 225
    .local v0, "btn":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_0
    const v1, 0x7f080f01

    invoke-virtual {p0, v1}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 230
    .restart local v0    # "btn":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_1
    return-void
.end method

.method public setMsg(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->setMsg(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public setMsg(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 210
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->msg:Ljava/lang/String;

    .line 211
    const v1, 0x7f080f03

    invoke-virtual {p0, v1}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 197
    const v1, 0x7f080f02

    invoke-virtual {p0, v1}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "tv":Landroid/widget/TextView;
    move-object v1, p1

    .line 198
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/syu/utils/W3DialogUtils$CustomDialog;->title:Ljava/lang/String;

    .line 199
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    return-void
.end method

.method public stratActivityByName()V
    .locals 4

    .prologue
    .line 259
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.syu.unicar"

    const-string v3, "com.syu.unicar.MainAct"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 261
    const-string v1, "isFromLauncher"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 264
    :try_start_0
    invoke-virtual {p0}, Lcom/syu/utils/W3DialogUtils$CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v1

    goto :goto_0
.end method
