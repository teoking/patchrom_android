.class Landroid/widget/LetvSettingSwitcher$1;
.super Ljava/lang/Object;
.source "LetvSettingSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/LetvSettingSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/LetvSettingSwitcher;


# direct methods
.method constructor <init>(Landroid/widget/LetvSettingSwitcher;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/LetvSettingSwitcher$1;->this$0:Landroid/widget/LetvSettingSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher$1;->this$0:Landroid/widget/LetvSettingSwitcher;

    #getter for: Landroid/widget/LetvSettingSwitcher;->mTextSwitcher:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Landroid/widget/LetvSettingSwitcher;->access$100(Landroid/widget/LetvSettingSwitcher;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher$1;->this$0:Landroid/widget/LetvSettingSwitcher;

    #getter for: Landroid/widget/LetvSettingSwitcher;->mAanimationRightIn:Landroid/view/animation/Animation;
    invoke-static {v1}, Landroid/widget/LetvSettingSwitcher;->access$000(Landroid/widget/LetvSettingSwitcher;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher$1;->this$0:Landroid/widget/LetvSettingSwitcher;

    #getter for: Landroid/widget/LetvSettingSwitcher;->mTextSwitcher:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Landroid/widget/LetvSettingSwitcher;->access$100(Landroid/widget/LetvSettingSwitcher;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher$1;->this$0:Landroid/widget/LetvSettingSwitcher;

    #getter for: Landroid/widget/LetvSettingSwitcher;->mAnimationLeftOut:Landroid/view/animation/Animation;
    invoke-static {v1}, Landroid/widget/LetvSettingSwitcher;->access$200(Landroid/widget/LetvSettingSwitcher;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher$1;->this$0:Landroid/widget/LetvSettingSwitcher;

    invoke-static {v0}, Landroid/widget/LetvSettingSwitcher;->access$308(Landroid/widget/LetvSettingSwitcher;)I

    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher$1;->this$0:Landroid/widget/LetvSettingSwitcher;

    #getter for: Landroid/widget/LetvSettingSwitcher;->mIndex:I
    invoke-static {v0}, Landroid/widget/LetvSettingSwitcher;->access$300(Landroid/widget/LetvSettingSwitcher;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher$1;->this$0:Landroid/widget/LetvSettingSwitcher;

    #getter for: Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/widget/LetvSettingSwitcher;->access$400(Landroid/widget/LetvSettingSwitcher;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher$1;->this$0:Landroid/widget/LetvSettingSwitcher;

    const/4 v1, 0x0

    #setter for: Landroid/widget/LetvSettingSwitcher;->mIndex:I
    invoke-static {v0, v1}, Landroid/widget/LetvSettingSwitcher;->access$302(Landroid/widget/LetvSettingSwitcher;I)I

    :cond_0
    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher$1;->this$0:Landroid/widget/LetvSettingSwitcher;

    #calls: Landroid/widget/LetvSettingSwitcher;->setValue()V
    invoke-static {v0}, Landroid/widget/LetvSettingSwitcher;->access$500(Landroid/widget/LetvSettingSwitcher;)V

    return-void
.end method
