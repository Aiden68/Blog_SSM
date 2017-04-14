package cn.andone.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PostsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PostsExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andTitleIsNull() {
            addCriterion("title is null");
            return (Criteria) this;
        }

        public Criteria andTitleIsNotNull() {
            addCriterion("title is not null");
            return (Criteria) this;
        }

        public Criteria andTitleEqualTo(String value) {
            addCriterion("title =", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotEqualTo(String value) {
            addCriterion("title <>", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThan(String value) {
            addCriterion("title >", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThanOrEqualTo(String value) {
            addCriterion("title >=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThan(String value) {
            addCriterion("title <", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThanOrEqualTo(String value) {
            addCriterion("title <=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLike(String value) {
            addCriterion("title like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotLike(String value) {
            addCriterion("title not like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleIn(List<String> values) {
            addCriterion("title in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotIn(List<String> values) {
            addCriterion("title not in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleBetween(String value1, String value2) {
            addCriterion("title between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotBetween(String value1, String value2) {
            addCriterion("title not between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andSummaryIsNull() {
            addCriterion("summary is null");
            return (Criteria) this;
        }

        public Criteria andSummaryIsNotNull() {
            addCriterion("summary is not null");
            return (Criteria) this;
        }

        public Criteria andSummaryEqualTo(String value) {
            addCriterion("summary =", value, "summary");
            return (Criteria) this;
        }

        public Criteria andSummaryNotEqualTo(String value) {
            addCriterion("summary <>", value, "summary");
            return (Criteria) this;
        }

        public Criteria andSummaryGreaterThan(String value) {
            addCriterion("summary >", value, "summary");
            return (Criteria) this;
        }

        public Criteria andSummaryGreaterThanOrEqualTo(String value) {
            addCriterion("summary >=", value, "summary");
            return (Criteria) this;
        }

        public Criteria andSummaryLessThan(String value) {
            addCriterion("summary <", value, "summary");
            return (Criteria) this;
        }

        public Criteria andSummaryLessThanOrEqualTo(String value) {
            addCriterion("summary <=", value, "summary");
            return (Criteria) this;
        }

        public Criteria andSummaryLike(String value) {
            addCriterion("summary like", value, "summary");
            return (Criteria) this;
        }

        public Criteria andSummaryNotLike(String value) {
            addCriterion("summary not like", value, "summary");
            return (Criteria) this;
        }

        public Criteria andSummaryIn(List<String> values) {
            addCriterion("summary in", values, "summary");
            return (Criteria) this;
        }

        public Criteria andSummaryNotIn(List<String> values) {
            addCriterion("summary not in", values, "summary");
            return (Criteria) this;
        }

        public Criteria andSummaryBetween(String value1, String value2) {
            addCriterion("summary between", value1, value2, "summary");
            return (Criteria) this;
        }

        public Criteria andSummaryNotBetween(String value1, String value2) {
            addCriterion("summary not between", value1, value2, "summary");
            return (Criteria) this;
        }

        public Criteria andCatidIsNull() {
            addCriterion("catId is null");
            return (Criteria) this;
        }

        public Criteria andCatidIsNotNull() {
            addCriterion("catId is not null");
            return (Criteria) this;
        }

        public Criteria andCatidEqualTo(Integer value) {
            addCriterion("catId =", value, "catid");
            return (Criteria) this;
        }

        public Criteria andCatidNotEqualTo(Integer value) {
            addCriterion("catId <>", value, "catid");
            return (Criteria) this;
        }

        public Criteria andCatidGreaterThan(Integer value) {
            addCriterion("catId >", value, "catid");
            return (Criteria) this;
        }

        public Criteria andCatidGreaterThanOrEqualTo(Integer value) {
            addCriterion("catId >=", value, "catid");
            return (Criteria) this;
        }

        public Criteria andCatidLessThan(Integer value) {
            addCriterion("catId <", value, "catid");
            return (Criteria) this;
        }

        public Criteria andCatidLessThanOrEqualTo(Integer value) {
            addCriterion("catId <=", value, "catid");
            return (Criteria) this;
        }

        public Criteria andCatidIn(List<Integer> values) {
            addCriterion("catId in", values, "catid");
            return (Criteria) this;
        }

        public Criteria andCatidNotIn(List<Integer> values) {
            addCriterion("catId not in", values, "catid");
            return (Criteria) this;
        }

        public Criteria andCatidBetween(Integer value1, Integer value2) {
            addCriterion("catId between", value1, value2, "catid");
            return (Criteria) this;
        }

        public Criteria andCatidNotBetween(Integer value1, Integer value2) {
            addCriterion("catId not between", value1, value2, "catid");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIsNull() {
            addCriterion("createTime is null");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIsNotNull() {
            addCriterion("createTime is not null");
            return (Criteria) this;
        }

        public Criteria andCreatetimeEqualTo(Date value) {
            addCriterion("createTime =", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotEqualTo(Date value) {
            addCriterion("createTime <>", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeGreaterThan(Date value) {
            addCriterion("createTime >", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("createTime >=", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeLessThan(Date value) {
            addCriterion("createTime <", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeLessThanOrEqualTo(Date value) {
            addCriterion("createTime <=", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIn(List<Date> values) {
            addCriterion("createTime in", values, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotIn(List<Date> values) {
            addCriterion("createTime not in", values, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeBetween(Date value1, Date value2) {
            addCriterion("createTime between", value1, value2, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotBetween(Date value1, Date value2) {
            addCriterion("createTime not between", value1, value2, "createtime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeIsNull() {
            addCriterion("updateTime is null");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeIsNotNull() {
            addCriterion("updateTime is not null");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeEqualTo(Date value) {
            addCriterion("updateTime =", value, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeNotEqualTo(Date value) {
            addCriterion("updateTime <>", value, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeGreaterThan(Date value) {
            addCriterion("updateTime >", value, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("updateTime >=", value, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeLessThan(Date value) {
            addCriterion("updateTime <", value, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeLessThanOrEqualTo(Date value) {
            addCriterion("updateTime <=", value, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeIn(List<Date> values) {
            addCriterion("updateTime in", values, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeNotIn(List<Date> values) {
            addCriterion("updateTime not in", values, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeBetween(Date value1, Date value2) {
            addCriterion("updateTime between", value1, value2, "updatetime");
            return (Criteria) this;
        }

        public Criteria andUpdatetimeNotBetween(Date value1, Date value2) {
            addCriterion("updateTime not between", value1, value2, "updatetime");
            return (Criteria) this;
        }

        public Criteria andCatnameIsNull() {
            addCriterion("catName is null");
            return (Criteria) this;
        }

        public Criteria andCatnameIsNotNull() {
            addCriterion("catName is not null");
            return (Criteria) this;
        }

        public Criteria andCatnameEqualTo(String value) {
            addCriterion("catName =", value, "catname");
            return (Criteria) this;
        }

        public Criteria andCatnameNotEqualTo(String value) {
            addCriterion("catName <>", value, "catname");
            return (Criteria) this;
        }

        public Criteria andCatnameGreaterThan(String value) {
            addCriterion("catName >", value, "catname");
            return (Criteria) this;
        }

        public Criteria andCatnameGreaterThanOrEqualTo(String value) {
            addCriterion("catName >=", value, "catname");
            return (Criteria) this;
        }

        public Criteria andCatnameLessThan(String value) {
            addCriterion("catName <", value, "catname");
            return (Criteria) this;
        }

        public Criteria andCatnameLessThanOrEqualTo(String value) {
            addCriterion("catName <=", value, "catname");
            return (Criteria) this;
        }

        public Criteria andCatnameLike(String value) {
            addCriterion("catName like", value, "catname");
            return (Criteria) this;
        }

        public Criteria andCatnameNotLike(String value) {
            addCriterion("catName not like", value, "catname");
            return (Criteria) this;
        }

        public Criteria andCatnameIn(List<String> values) {
            addCriterion("catName in", values, "catname");
            return (Criteria) this;
        }

        public Criteria andCatnameNotIn(List<String> values) {
            addCriterion("catName not in", values, "catname");
            return (Criteria) this;
        }

        public Criteria andCatnameBetween(String value1, String value2) {
            addCriterion("catName between", value1, value2, "catname");
            return (Criteria) this;
        }

        public Criteria andCatnameNotBetween(String value1, String value2) {
            addCriterion("catName not between", value1, value2, "catname");
            return (Criteria) this;
        }

        public Criteria andComsizeIsNull() {
            addCriterion("comSize is null");
            return (Criteria) this;
        }

        public Criteria andComsizeIsNotNull() {
            addCriterion("comSize is not null");
            return (Criteria) this;
        }

        public Criteria andComsizeEqualTo(Integer value) {
            addCriterion("comSize =", value, "comsize");
            return (Criteria) this;
        }

        public Criteria andComsizeNotEqualTo(Integer value) {
            addCriterion("comSize <>", value, "comsize");
            return (Criteria) this;
        }

        public Criteria andComsizeGreaterThan(Integer value) {
            addCriterion("comSize >", value, "comsize");
            return (Criteria) this;
        }

        public Criteria andComsizeGreaterThanOrEqualTo(Integer value) {
            addCriterion("comSize >=", value, "comsize");
            return (Criteria) this;
        }

        public Criteria andComsizeLessThan(Integer value) {
            addCriterion("comSize <", value, "comsize");
            return (Criteria) this;
        }

        public Criteria andComsizeLessThanOrEqualTo(Integer value) {
            addCriterion("comSize <=", value, "comsize");
            return (Criteria) this;
        }

        public Criteria andComsizeIn(List<Integer> values) {
            addCriterion("comSize in", values, "comsize");
            return (Criteria) this;
        }

        public Criteria andComsizeNotIn(List<Integer> values) {
            addCriterion("comSize not in", values, "comsize");
            return (Criteria) this;
        }

        public Criteria andComsizeBetween(Integer value1, Integer value2) {
            addCriterion("comSize between", value1, value2, "comsize");
            return (Criteria) this;
        }

        public Criteria andComsizeNotBetween(Integer value1, Integer value2) {
            addCriterion("comSize not between", value1, value2, "comsize");
            return (Criteria) this;
        }

        public Criteria andVisitorIsNull() {
            addCriterion("visitor is null");
            return (Criteria) this;
        }

        public Criteria andVisitorIsNotNull() {
            addCriterion("visitor is not null");
            return (Criteria) this;
        }

        public Criteria andVisitorEqualTo(Integer value) {
            addCriterion("visitor =", value, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorNotEqualTo(Integer value) {
            addCriterion("visitor <>", value, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorGreaterThan(Integer value) {
            addCriterion("visitor >", value, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorGreaterThanOrEqualTo(Integer value) {
            addCriterion("visitor >=", value, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorLessThan(Integer value) {
            addCriterion("visitor <", value, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorLessThanOrEqualTo(Integer value) {
            addCriterion("visitor <=", value, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorIn(List<Integer> values) {
            addCriterion("visitor in", values, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorNotIn(List<Integer> values) {
            addCriterion("visitor not in", values, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorBetween(Integer value1, Integer value2) {
            addCriterion("visitor between", value1, value2, "visitor");
            return (Criteria) this;
        }

        public Criteria andVisitorNotBetween(Integer value1, Integer value2) {
            addCriterion("visitor not between", value1, value2, "visitor");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}