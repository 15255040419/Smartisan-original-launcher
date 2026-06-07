.class public synthetic Lsmartisan/widget/editor/LabelEditor$b;
.super Ljava/lang/Object;
.source "LabelEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/editor/LabelEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lsmartisan/widget/editor/LabelEditor$c;->values()[Lsmartisan/widget/editor/LabelEditor$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lsmartisan/widget/editor/LabelEditor$b;->a:[I

    :try_start_0
    sget-object v0, Lsmartisan/widget/editor/LabelEditor$b;->a:[I

    sget-object v1, Lsmartisan/widget/editor/LabelEditor$c;->a:Lsmartisan/widget/editor/LabelEditor$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
