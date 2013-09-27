.class public Lletv/widget/LetvButton;
.super Landroid/widget/LinearLayout;
.source "LetvButton.java"


# static fields
.field public static MID_MODE:I

.field public static SIDE_MODE:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMidText:Landroid/widget/TextView;

.field private mMode:I

.field private mTitle:Ljava/lang/String;

.field private mTitleItem:Landroid/widget/TextView;

.field private sHighLightColor:I

.field private sNormalColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "LetvButton"

    sput-object v0, Lletv/widget/LetvButton;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lletv/widget/LetvButton;->MID_MODE:I

    const/4 v0, 0x1

    sput v0, Lletv/widget/LetvButton;->SIDE_MODE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v2, Lletv/widget/LetvButton;->SIDE_MODE:I

    iput v2, p0, Lletv/widget/LetvButton;->mMode:I

    iput-object p1, p0, Lletv/widget/LetvButton;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->LetvButton:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, mTypedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lletv/widget/LetvButton;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvButton;->mMode:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, Inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090080

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0, v3}, Lletv/widget/LetvButton;->setFocusable(Z)V

    iget-object v2, p0, Lletv/widget/LetvButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvButton;->sHighLightColor:I

    iget-object v2, p0, Lletv/widget/LetvButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvButton;->sNormalColor:I

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v1, 0x1020322

    invoke-virtual {p0, v1}, Lletv/widget/LetvButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lletv/widget/LetvButton;->mTitleItem:Landroid/widget/TextView;

    const v1, 0x1020323

    invoke-virtual {p0, v1}, Lletv/widget/LetvButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lletv/widget/LetvButton;->mMidText:Landroid/widget/TextView;

    iget-object v1, p0, Lletv/widget/LetvButton;->mTitleItem:Landroid/widget/TextView;

    iget-object v2, p0, Lletv/widget/LetvButton;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lletv/widget/LetvButton;->mTitleItem:Landroid/widget/TextView;

    iget v2, p0, Lletv/widget/LetvButton;->sNormalColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lletv/widget/LetvButton;->mMidText:Landroid/widget/TextView;

    iget v2, p0, Lletv/widget/LetvButton;->sNormalColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget v1, p0, Lletv/widget/LetvButton;->mMode:I

    sget v2, Lletv/widget/LetvButton;->MID_MODE:I

    if-ne v1, v2, :cond_0

    const v1, 0x1020324

    invoke-virtual {p0, v1}, Lletv/widget/LetvButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, image:Landroid/widget/ImageView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lletv/widget/LetvButton;->mMidText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .end local v0           #image:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    sget-object v0, Lletv/widget/LetvButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lletv/widget/LetvButton;->mTitleItem:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvButton;->sHighLightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lletv/widget/LetvButton;->mMidText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lletv/widget/LetvButton;->mMidText:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvButton;->sHighLightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lletv/widget/LetvButton;->mTitleItem:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvButton;->sNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lletv/widget/LetvButton;->mMidText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lletv/widget/LetvButton;->mMidText:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvButton;->sNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setMidText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    iget-object v0, p0, Lletv/widget/LetvButton;->mMidText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lletv/widget/LetvButton;->mMidText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    iput-object p1, p0, Lletv/widget/LetvButton;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lletv/widget/LetvButton;->mTitleItem:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lletv/widget/LetvButton;->mTitleItem:Landroid/widget/TextView;

    iget-object v1, p0, Lletv/widget/LetvButton;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
